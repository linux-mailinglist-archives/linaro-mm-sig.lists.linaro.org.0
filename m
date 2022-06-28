Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E3457B2A6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 10:16:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC07E402ED
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 08:16:31 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id DFFBB3EBC5
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jun 2022 11:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1656417236;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9DZIBhwK0nu+d+e5Dn67t8pp9MEtfy3sJMXiRir3HYs=;
	b=LNu9OM9cAYgxrfyZeRwLmHBS7TAL0IaUoHUvTrzQ2mE1PK/LeF3yJx2YR+vIcXkeIwejV/
	ENAnqxoT2xF+d9rBpu46AxwrezwYDpLgAgh6duPHXQUMf36T2LZw2+XmOcnLANfqi/j07p
	cXDROtm2cLFqP4OB3XaRwbC+/pvfrjo=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-657-IbUMwD6kPQ-wa7sTB8IIIg-1; Tue, 28 Jun 2022 07:53:55 -0400
X-MC-Unique: IbUMwD6kPQ-wa7sTB8IIIg-1
Received: by mail-qv1-f72.google.com with SMTP id m7-20020ad45dc7000000b0047042480dbfso11992959qvh.9
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jun 2022 04:53:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=9DZIBhwK0nu+d+e5Dn67t8pp9MEtfy3sJMXiRir3HYs=;
        b=szTWUyQbgwSPS9IDbw6RSWboqPzCHsMTCrYaMKIkDLVQUw1ux+PkUDzrSuNkIz90Ip
         Fv5MBXxZXRETMCZfBaQ2rlUclG/i4L9I+wZroT0YGgfcZ5rh0c/opDhkKpFvztTZFQem
         V3RzHudHx0XDD4BsTrGewyveb3qMfO+HAOHaJXmgmDoyJts2oerzkF/5MkjSB0RFha3N
         /KrktKpg+s0/3yxV1pNjXB6pPSvZ6DquL8M9y3bhCse01Gsvh0FVNymce4MtRrC6C9B+
         KNoxXPGaUiafOJ34quJaUu/Dj+YDAtsmY62DZBnAKepu+zqr560BUPh8CrJDNjS1C+7W
         HeLQ==
X-Gm-Message-State: AJIora8xNAmqChS+4PMeR9noA/DDVb21eHtVlwS585gUkScHg517FkB1
	XYmPjCEN7zsSxxG4pwyQEHetXXW2NBMu//GAJOu3xlM6UUcNU12vxuaByvShQPW9o+JQqOnxTFP
	2Tn5ykcCbbyyEClEu/KwH6/Y/KNU=
X-Received: by 2002:a37:a9d0:0:b0:6af:1ba4:c3e5 with SMTP id s199-20020a37a9d0000000b006af1ba4c3e5mr8500862qke.167.1656417234893;
        Tue, 28 Jun 2022 04:53:54 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1tsML0jjLfuArn0V98uqgHi7yCfymN14awwvePjx5qt4Ac2aBE1EXWTFaiUYpN07axMfRvatg==
X-Received: by 2002:a37:a9d0:0:b0:6af:1ba4:c3e5 with SMTP id s199-20020a37a9d0000000b006af1ba4c3e5mr8500833qke.167.1656417234666;
        Tue, 28 Jun 2022 04:53:54 -0700 (PDT)
Received: from bfoster (c-24-61-119-116.hsd1.ma.comcast.net. [24.61.119.116])
        by smtp.gmail.com with ESMTPSA id bw20-20020a05622a099400b00304bc2acc25sm8851128qtb.6.2022.06.28.04.53.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 04:53:54 -0700 (PDT)
Date: Tue, 28 Jun 2022 07:53:51 -0400
From: Brian Foster <bfoster@redhat.com>
To: Kalesh Singh <kaleshsingh@google.com>
Message-ID: <Yrrrz7MxMu8OoEPU@bfoster>
References: <20220623220613.3014268-1-kaleshsingh@google.com>
 <20220623220613.3014268-2-kaleshsingh@google.com>
MIME-Version: 1.0
In-Reply-To: <20220623220613.3014268-2-kaleshsingh@google.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=bfoster@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-MailFrom: bfoster@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DHOOT7Q2ZPVHPAPR5OICIGF73H7Q2NCV
X-Message-ID-Hash: DHOOT7Q2ZPVHPAPR5OICIGF73H7Q2NCV
X-Mailman-Approved-At: Wed, 20 Jul 2022 08:16:29 +0000
CC: christian.koenig@amd.com, viro@zeniv.linux.org.uk, hch@infradead.org, stephen.s.brennan@oracle.com, David.Laight@aculab.com, ilkos@google.com, tjmercier@google.com, surenb@google.com, kernel-team@android.com, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, Johannes Weiner <hannes@cmpxchg.org>, Christoph Anton Mitterer <mail@christoph.anton.mitterer.name>, Paul Gortmaker <paul.gortmaker@windriver.com>, Mike Rapoport <rppt@kernel.org>, Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/2] procfs: Add 'size' to /proc/<pid>/fdinfo/
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DHOOT7Q2ZPVHPAPR5OICIGF73H7Q2NCV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 23, 2022 at 03:06:06PM -0700, Kalesh Singh wrote:
> To be able to account the amount of memory a process is keeping pinned
> by open file descriptors add a 'size' field to fdinfo output.
>=20
> dmabufs fds already expose a 'size' field for this reason, remove this
> and make it a common field for all fds. This allows tracking of
> other types of memory (e.g. memfd and ashmem in Android).
>=20
> Signed-off-by: Kalesh Singh <kaleshsingh@google.com>
> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>=20
> Changes in v2:
>   - Add Christian's Reviewed-by
>=20
> Changes from rfc:
>   - Split adding 'size' and 'path' into a separate patches, per Christian
>   - Split fdinfo seq_printf into separate lines, per Christian
>   - Fix indentation (use tabs) in documentaion, per Randy
>=20
>  Documentation/filesystems/proc.rst | 12 ++++++++++--
>  drivers/dma-buf/dma-buf.c          |  1 -
>  fs/proc/fd.c                       |  9 +++++----
>  3 files changed, 15 insertions(+), 7 deletions(-)
>=20
...
> diff --git a/fs/proc/fd.c b/fs/proc/fd.c
> index 913bef0d2a36..464bc3f55759 100644
> --- a/fs/proc/fd.c
> +++ b/fs/proc/fd.c
> @@ -54,10 +54,11 @@ static int seq_show(struct seq_file *m, void *v)
>  	if (ret)
>  		return ret;
> =20
> -	seq_printf(m, "pos:\t%lli\nflags:\t0%o\nmnt_id:\t%i\nino:\t%lu\n",
> -		   (long long)file->f_pos, f_flags,
> -		   real_mount(file->f_path.mnt)->mnt_id,
> -		   file_inode(file)->i_ino);
> +	seq_printf(m, "pos:\t%lli\n", (long long)file->f_pos);
> +	seq_printf(m, "flags:\t0%o\n", f_flags);
> +	seq_printf(m, "mnt_id:\t%i\n", real_mount(file->f_path.mnt)->mnt_id);
> +	seq_printf(m, "ino:\t%lu\n", file_inode(file)->i_ino);
> +	seq_printf(m, "size:\t%lli\n", (long long)file_inode(file)->i_size);

Hi Kalesh,

Any reason not to use i_size_read() here?

Also not sure if it matters that much for your use case, but something
worth noting at least with shmem is that one can do something like:

# cat /proc/meminfo | grep Shmem:
Shmem:               764 kB
# xfs_io -fc "falloc -k 0 10m" ./file
# ls -alh file=20
-rw-------. 1 root root 0 Jun 28 07:22 file
# stat file=20
  File: file
  Size: 0               Blocks: 20480      IO Block: 4096   regular empty f=
ile
# cat /proc/meminfo | grep Shmem:
Shmem:             11004 kB

... where the resulting memory usage isn't reflected in i_size (but is
is in i_blocks/bytes).

Brian

> =20
>  	/* show_fd_locks() never deferences files so a stale value is safe */
>  	show_fd_locks(m, file, files);
> --=20
> 2.37.0.rc0.161.g10f37bed90-goog
>=20

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
