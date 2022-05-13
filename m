Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AD12F525F96
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 May 2022 12:11:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 859E1404D1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 May 2022 10:11:38 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id B71403EA4A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 May 2022 10:11:33 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C7E02B82C43;
	Fri, 13 May 2022 10:11:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35BFCC34100;
	Fri, 13 May 2022 10:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1652436691;
	bh=lu1qNSETH4oQiiGcY+W6ghL7tAUgm/HcpwE3q3hlxeU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GvRKQGY8QdRuBsjoRwGKUGEJOPqhtJd04jJbt9BELDR2VhG3abOS6wOGoYcviFycA
	 +Bw3M1/8yZr5Vr79zxyQGUgIT1fRX5+K5jrqenJWlp6i71HRBfMtpxUBVtXXLM4h8P
	 BHdOh8veoLZbq/mF1YIkpD+G26T89/oYb4sDgPbo=
Date: Fri, 13 May 2022 12:11:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Charan Teja Kalla <quic_charante@quicinc.com>
Message-ID: <Yn4u0AG8iC33S3jO@kroah.com>
References: <1652434689-6203-1-git-send-email-quic_charante@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1652434689-6203-1-git-send-email-quic_charante@quicinc.com>
Message-ID-Hash: B4HEYTAMTFL4GZNEUQTZ7N6JSPKEM4ZN
X-Message-ID-Hash: B4HEYTAMTFL4GZNEUQTZ7N6JSPKEM4ZN
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: christian.koenig@amd.com, sumit.semwal@linaro.org, hridya@google.com, tjmercier@google.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V3] dma-buf: ensure unique directory name for dmabuf stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B4HEYTAMTFL4GZNEUQTZ7N6JSPKEM4ZN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 13, 2022 at 03:08:09PM +0530, Charan Teja Kalla wrote:
> The dmabuf file uses get_next_ino()(through dma_buf_getfile() ->
> alloc_anon_inode()) to get an inode number and uses the same as a
> directory name under /sys/kernel/dmabuf/buffers/<ino>. This directory is
> used to collect the dmabuf stats and it is created through
> dma_buf_stats_setup(). At current, failure to create this directory
> entry can make the dma_buf_export() to fail.
> 
> Now, as the get_next_ino() can definitely give a repetitive inode no
> causing the directory entry creation to fail with -EEXIST. This is a
> problem on the systems where dmabuf stats functionality is enabled on
> the production builds can make the dma_buf_export(), though the dmabuf
> memory is allocated successfully, to fail just because it couldn't
> create stats entry.
> 
> This issue we are able to see on the snapdragon system within 13 days
> where there already exists a directory with inode no "122602" so
> dma_buf_stats_setup() failed with -EEXIST as it is trying to create
> the same directory entry.
> 
> To make the dentry name as unique, use the dmabuf fs specific inode
> which is based on the simple atomic variable increment. There is tmpfs
> subsystem too which relies on its own inode generation rather than
> relying on the get_next_ino() for the same reason of avoiding the
> duplicate inodes[1].
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/patch/?id=e809d5f0b5c912fe981dce738f3283b2010665f0
> 
> Reported-by: kernel test robot <lkp@intel.com>

The trest robot did not say that the dmabuf stat name was being
duplicated, did it?

> Signed-off-by: Charan Teja Kalla <quic_charante@quicinc.com>
> ---
> Changes in V3:
>   -- Used the atomic64 variable to have dmabuf files its own inodes.
>   -- Ensured no UAPI breakage as suggested by Christian.
> 
> Changes in V2:
>   -- Used the atomic64_t variable to generate a unique_id to be appended to inode
>      to have an unique directory with name <inode_number-unique_id> -- Suggested by christian
>   -- Updated the ABI documentation -- Identified by Greg.
>   -- Massaged the commit log.
>   -- https://lore.kernel.org/all/1652191562-18700-1-git-send-email-quic_charante@quicinc.com/
> 
> Changes in V1:
>   -- Used the inode->i_ctime->tv_secs as an id appended to inode to create the
>      unique directory with name <inode_number-time_in_secs>.
>   -- https://lore.kernel.org/all/1652178212-22383-1-git-send-email-quic_charante@quicinc.com/
> 
>  drivers/dma-buf/dma-buf.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index a6fc96e..0ad5039 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -407,6 +407,7 @@ static inline int is_dma_buf_file(struct file *file)
>  
>  static struct file *dma_buf_getfile(struct dma_buf *dmabuf, int flags)
>  {
> +	static atomic64_t dmabuf_inode = ATOMIC64_INIT(0);
>  	struct file *file;
>  	struct inode *inode = alloc_anon_inode(dma_buf_mnt->mnt_sb);
>  
> @@ -416,6 +417,13 @@ static struct file *dma_buf_getfile(struct dma_buf *dmabuf, int flags)
>  	inode->i_size = dmabuf->size;
>  	inode_set_bytes(inode, dmabuf->size);
>  
> +	/*
> +	 * The ->i_ino acquired from get_next_ino() is not unique thus
> +	 * not suitable for using it as dentry name by dmabuf stats.
> +	 * Override ->i_ino with the unique and dmabuffs specific
> +	 * value.
> +	 */
> +	inode->i_ino = atomic64_add_return(1, &dmabuf_inode);
>  	file = alloc_file_pseudo(inode, dma_buf_mnt, "dmabuf",
>  				 flags, &dma_buf_fops);
>  	if (IS_ERR(file))
> -- 
> 2.7.4
> 

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
