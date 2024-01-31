Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D6ED38441D7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jan 2024 15:27:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8F4A400E2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jan 2024 14:27:08 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by lists.linaro.org (Postfix) with ESMTPS id DABA13EA59
	for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jan 2024 14:27:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=xmZyLQL5;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.208.42 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-55a90a0a1a1so5585212a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jan 2024 06:27:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706711222; x=1707316022; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OeZhk9JphCYYMff7RoTbJ54B8cgaBzAdcxQolkBD6SQ=;
        b=xmZyLQL5GLE5PlgEyOUL7Vtnsmkl65gEWCvbQI9/s4EOfMgh0KLXhnNehMHi+Rc1Ib
         0isiFD+b8iij8jqgC/hTBRPTbmFFcPEVJbCLjZkqHLgyFcEo4vNq0oSC4+G++lxh/5vq
         Nj/SSxEhkwnQmwg19S8wY3Td6Ili96pdk8EZws/Aze23CaK437L2bB/wrs5JYBbqVb9e
         /i4u4v3dh9zCJGWamEDlTnImde1ipzvxNa2xZRWYuodVbg3wjPpsHFafKdGy8clIeW0n
         LZAjU1eWWjE3c8n8AENXC1+a09YHXmCMNoHF3q1cmwaqgqLI1Wb15t6XYg/lWVh/Yqx2
         D+6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706711222; x=1707316022;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OeZhk9JphCYYMff7RoTbJ54B8cgaBzAdcxQolkBD6SQ=;
        b=UlK6QSUEhjl/QY72oqqqbjB4wy4xbMZ/bZEA8Uk7vkC9TIb/gtLrX8Sly8yEyADmIm
         xWn6TFX8Ve/h2T+LdwrEMIpdgxXS0+NugjXETMnD2gP8Gz73PTotDIq6KQXsPES9kHla
         D91nv82KKxXSebsFhtZ31jUf6W1HkwpN/RkIP5WLGHJCGJ8AKElQ/1DhvUHtl+uvMA6j
         OrbGhrTXs+JuNxLMU7D7f0OPjZNv4fL3u/x0Q33FVHOm1BBMj9A400vsKs0xVD/PcrEg
         odNN06a9f57JPrwSrN2htRWTCJ+Q3Xo8+MCyGgeQJJXEQuNdMtWTbA2lfsqXL+cCkXhk
         5UZg==
X-Gm-Message-State: AOJu0YwFOguhG/rtXXvus74XpZn8I8ulaLu8V2XwxgVWRol+Lx/ZuVWJ
	07BNxFrrIk8P9RkK6TP2A/vX5Xsl1XXAvCbfp6NtDGFAbkIBoBbtxenebT4fOt7JROd5PH4pTXE
	AzNNI0pKH6fJVZR2bRU3zdavRy0zcUhsoy6drstys
X-Google-Smtp-Source: AGHT+IFzY4aeNzPPtRi4I/P+0HsgxpbXl1Z6p1RuP6G0wTGJLY9yXhwO9Z/fDRffrhpDRT4DutQR0T4S92miQ4XswgI=
X-Received: by 2002:aa7:c759:0:b0:55f:1232:fbc7 with SMTP id
 c25-20020aa7c759000000b0055f1232fbc7mr1354471eds.37.1706711221701; Wed, 31
 Jan 2024 06:27:01 -0800 (PST)
MIME-Version: 1.0
References: <20240117181141.286383-1-tjmercier@google.com> <20a68f86-27f0-48f4-a066-7dcf0092858e@amd.com>
In-Reply-To: <20a68f86-27f0-48f4-a066-7dcf0092858e@amd.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 31 Jan 2024 19:56:50 +0530
Message-ID: <CAO_48GEHpij-_q85NaVHc9hH5bEoaWT6hcOe_LLZ2pNHsb8Jjw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DABA13EA59
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.42:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: OKQMXB7LWKIEGHD72RR3K4OERNESNPOG
X-Message-ID-Hash: OKQMXB7LWKIEGHD72RR3K4OERNESNPOG
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Sandeep Patil <sspatil@android.com>, Laura Abbott <labbott@redhat.com>, android-mm@google.com, minchan@google.com, daniel@ffwll.ch, John Stultz <john.stultz@linaro.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Don't track CMA dma-buf pages under RssFile
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OKQMXB7LWKIEGHD72RR3K4OERNESNPOG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1669987169110471224=="

--===============1669987169110471224==
Content-Type: multipart/alternative; boundary="0000000000001aa04106103eac13"

--0000000000001aa04106103eac13
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi TJ,

On Thu, 18 Jan 2024 at 15:32, Christian K=C3=B6nig <christian.koenig@amd.co=
m>
wrote:

> Am 17.01.24 um 19:11 schrieb T.J. Mercier:
>
> DMA buffers allocated from the CMA dma-buf heap get counted under
> RssFile for processes that map them and trigger page faults. In
> addition to the incorrect accounting reported to userspace, reclaim
> behavior was influenced by the MM_FILEPAGES counter until linux 6.8, but
> this memory is not reclaimable. [1] Change the CMA dma-buf heap to set
> VM_PFNMAP on the VMA so MM does not poke at the memory managed by this
> dma-buf heap, and use vmf_insert_pfn to correct the RSS accounting.
>
> The system dma-buf heap does not suffer from this issue since
> remap_pfn_range is used during the mmap of the buffer, which also sets
> VM_PFNMAP on the VMA.
>
>
> Mhm, not an issue with this patch but Daniel wanted to add a check for
> VM_PFNMAP to dma_buf_mmap() which would have noted this earlier.
>
> I don't fully remember the discussion but for some reason that was never
> committed. We should probably try that again.
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/co=
mmit/mm/vmscan.c?id=3Dfb46e22a9e3863e08aef8815df9f17d0f4b9aede
>
> Fixes: b61614ec318a ("dma-buf: heaps: Add CMA heap to dmabuf heaps")
> Signed-off-by: T.J. Mercier <tjmercier@google.com> <tjmercier@google.com>
>
>
> Acked-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> <christian.koenig@amd.com>
>
Thanks for the patch; pushed to drm-misc-fixes.

Best,
Sumit

>
>
> ---
>  drivers/dma-buf/heaps/cma_heap.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma=
_heap.c
> index ee899f8e6721..4a63567e93ba 100644
> --- a/drivers/dma-buf/heaps/cma_heap.c
> +++ b/drivers/dma-buf/heaps/cma_heap.c
> @@ -168,10 +168,7 @@ static vm_fault_t cma_heap_vm_fault(struct vm_fault =
*vmf)
>  	if (vmf->pgoff > buffer->pagecount)
>  		return VM_FAULT_SIGBUS;
>
> -	vmf->page =3D buffer->pages[vmf->pgoff];
> -	get_page(vmf->page);
> -
> -	return 0;
> +	return vmf_insert_pfn(vma, vmf->address, page_to_pfn(buffer->pages[vmf-=
>pgoff]));
>  }
>
>  static const struct vm_operations_struct dma_heap_vm_ops =3D {
> @@ -185,6 +182,8 @@ static int cma_heap_mmap(struct dma_buf *dmabuf, stru=
ct vm_area_struct *vma)
>  	if ((vma->vm_flags & (VM_SHARED | VM_MAYSHARE)) =3D=3D 0)
>  		return -EINVAL;
>
> +	vm_flags_set(vma, VM_IO | VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP);
> +
>  	vma->vm_ops =3D &dma_heap_vm_ops;
>  	vma->vm_private_data =3D buffer;
>
>
>
>

--=20
Thanks and regards,

Sumit Semwal (he / him)
Tech Lead - LCG, Vertical Technologies
Linaro.org =E2=94=82 Open source software for ARM SoCs

--0000000000001aa04106103eac13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi TJ,</div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 18 Jan 2024 at 15:32, Chris=
tian K=C3=B6nig &lt;<a href=3D"mailto:christian.koenig@amd.com">christian.k=
oenig@amd.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><u></u>

 =20
  <div>
    Am 17.01.24 um 19:11 schrieb T.J. Mercier:<br>
    <blockquote type=3D"cite">
      <pre>DMA buffers allocated from the CMA dma-buf heap get counted unde=
r
RssFile for processes that map them and trigger page faults. In
addition to the incorrect accounting reported to userspace, reclaim
behavior was influenced by the MM_FILEPAGES counter until linux 6.8, but
this memory is not reclaimable. [1] Change the CMA dma-buf heap to set
VM_PFNMAP on the VMA so MM does not poke at the memory managed by this
dma-buf heap, and use vmf_insert_pfn to correct the RSS accounting.

The system dma-buf heap does not suffer from this issue since
remap_pfn_range is used during the mmap of the buffer, which also sets
VM_PFNMAP on the VMA.</pre>
    </blockquote>
    <br>
    Mhm, not an issue with this patch but Daniel wanted to add a check
    for VM_PFNMAP to dma_buf_mmap() which would have noted this earlier.<br=
>
    <br>
    I don&#39;t fully remember the discussion but for some reason that was
    never committed. We should probably try that again.<br>
    <br>
    <span style=3D"white-space:pre-wrap">
</span>
    <blockquote type=3D"cite">
      <pre>[1] <a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/t=
orvalds/linux.git/commit/mm/vmscan.c?id=3Dfb46e22a9e3863e08aef8815df9f17d0f=
4b9aede" target=3D"_blank">https://git.kernel.org/pub/scm/linux/kernel/git/=
torvalds/linux.git/commit/mm/vmscan.c?id=3Dfb46e22a9e3863e08aef8815df9f17d0=
f4b9aede</a>

Fixes: b61614ec318a (&quot;dma-buf: heaps: Add CMA heap to dmabuf heaps&quo=
t;)
Signed-off-by: T.J. Mercier <a href=3D"mailto:tjmercier@google.com" target=
=3D"_blank">&lt;tjmercier@google.com&gt;</a></pre>
    </blockquote>
    <br>
    Acked-by: Christian K=C3=B6nig <a href=3D"mailto:christian.koenig@amd.c=
om" target=3D"_blank">&lt;christian.koenig@amd.com&gt;</a></div></blockquot=
e><div>Thanks for the patch; pushed to drm-misc-fixes.</div><div><br></div>=
<div>Best,</div><div>Sumit=C2=A0</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div><br>
    <br>
    <blockquote type=3D"cite">
      <pre>---
 drivers/dma-buf/heaps/cma_heap.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_h=
eap.c
index ee899f8e6721..4a63567e93ba 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -168,10 +168,7 @@ static vm_fault_t cma_heap_vm_fault(struct vm_fault *v=
mf)
 	if (vmf-&gt;pgoff &gt; buffer-&gt;pagecount)
 		return VM_FAULT_SIGBUS;
=20
-	vmf-&gt;page =3D buffer-&gt;pages[vmf-&gt;pgoff];
-	get_page(vmf-&gt;page);
-
-	return 0;
+	return vmf_insert_pfn(vma, vmf-&gt;address, page_to_pfn(buffer-&gt;pages[=
vmf-&gt;pgoff]));
 }
=20
 static const struct vm_operations_struct dma_heap_vm_ops =3D {
@@ -185,6 +182,8 @@ static int cma_heap_mmap(struct dma_buf *dmabuf, struct=
 vm_area_struct *vma)
 	if ((vma-&gt;vm_flags &amp; (VM_SHARED | VM_MAYSHARE)) =3D=3D 0)
 		return -EINVAL;
=20
+	vm_flags_set(vma, VM_IO | VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP);
+
 	vma-&gt;vm_ops =3D &amp;dma_heap_vm_ops;
 	vma-&gt;vm_private_data =3D buffer;
=20
</pre>
    </blockquote>
    <br>
  </div>

</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Thanks and regards,<br><br>Sumit Semwal (he / him)<br>Tech L=
ead - LCG, Vertical Technologies<br>Linaro.org =E2=94=82 Open source softwa=
re for ARM SoCs</div></div></div>

--0000000000001aa04106103eac13--

--===============1669987169110471224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1669987169110471224==--
