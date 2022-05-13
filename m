Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FFA5323DF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 09:17:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ABDEE3ED86
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 07:17:58 +0000 (UTC)
Received: from alexa-out.qualcomm.com (alexa-out.qualcomm.com [129.46.98.28])
	by lists.linaro.org (Postfix) with ESMTPS id AAB474049A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 May 2022 10:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1652437112; x=1683973112;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=iywQtXelYTHo32D1tr1Is1mkpMiEf3de8gjUGnLQUz0=;
  b=D0vNKlcue82YIBZXdcfFbsmK6akqcDKbNK5lPQAQ7GqaRRQ26ghLVJ3b
   3IQcBJA9NmUcGffX6AF910r8kWwgwxqEjKwOe+qVpG4qhJQ0+66Cjk6Kb
   CXSLdeF5B4BuGO50Aji8jeUbNewBWa/YbCf+74Cyhz0ECWPqdgdnkLq3c
   M=;
Received: from ironmsg08-lv.qualcomm.com ([10.47.202.152])
  by alexa-out.qualcomm.com with ESMTP; 13 May 2022 03:18:31 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg08-lv.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2022 03:18:30 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Fri, 13 May 2022 03:18:29 -0700
Received: from [10.214.30.67] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Fri, 13 May
 2022 03:18:26 -0700
Message-ID: <2a45f1e1-39d5-76b3-8fd3-c1f8b288afac@quicinc.com>
Date: Fri, 13 May 2022 15:48:23 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Greg KH <gregkh@linuxfoundation.org>
References: <1652434689-6203-1-git-send-email-quic_charante@quicinc.com>
 <Yn4u0AG8iC33S3jO@kroah.com>
From: Charan Teja Kalla <quic_charante@quicinc.com>
In-Reply-To: <Yn4u0AG8iC33S3jO@kroah.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-MailFrom: quic_charante@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5KRYGA4JTVOVY3XMB6WM57ITZDWVEWQS
X-Message-ID-Hash: 5KRYGA4JTVOVY3XMB6WM57ITZDWVEWQS
X-Mailman-Approved-At: Tue, 24 May 2022 07:17:54 +0000
CC: christian.koenig@amd.com, sumit.semwal@linaro.org, hridya@google.com, tjmercier@google.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V3] dma-buf: ensure unique directory name for dmabuf stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5KRYGA4JTVOVY3XMB6WM57ITZDWVEWQS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On 5/13/2022 3:41 PM, Greg KH wrote:
>> Reported-by: kernel test robot <lkp@intel.com>
> The trest robot did not say that the dmabuf stat name was being
> duplicated, did it?
>

It reported a printk warning on V2[1]. Should we remove this on V3?

@Christian: Could you please drop this tag while merging?

[1] https://lore.kernel.org/all/202205110511.E0d8TXXC-lkp@intel.com/


>> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
>> index a6fc96e..0ad5039 100644
>> --- a/drivers/dma-buf/dma-buf.c
>> +++ b/drivers/dma-buf/dma-buf.c
>> @@ -407,6 +407,7 @@ static inline int is_dma_buf_file(struct file *file)
>>  
>>  static struct file *dma_buf_getfile(struct dma_buf *dmabuf, int flags)
>>  {
>> +	static atomic64_t dmabuf_inode = ATOMIC64_INIT(0);
>>  	struct file *file;
>>  	struct inode *inode = alloc_anon_inode(dma_buf_mnt->mnt_sb);
>>  
>> @@ -416,6 +417,13 @@ static struct file *dma_buf_getfile(struct dma_buf *dmabuf, int flags)
>>  	inode->i_size = dmabuf->size;
>>  	inode_set_bytes(inode, dmabuf->size);
>>  
>> +	/*
>> +	 * The ->i_ino acquired from get_next_ino() is not unique thus
>> +	 * not suitable for using it as dentry name by dmabuf stats.
>> +	 * Override ->i_ino with the unique and dmabuffs specific
>> +	 * value.
>> +	 */
>> +	inode->i_ino = atomic64_add_return(1, &dmabuf_inode);
>>  	file = alloc_file_pseudo(inode, dma_buf_mnt, "dmabuf",
>>  				 flags, &dma_buf_fops);
>>  	if (IS_ERR(file))
>> -- 
>> 2.7.4
>>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Thanks for the ACK.

--Charan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
