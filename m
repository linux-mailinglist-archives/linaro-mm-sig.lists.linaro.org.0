Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PuFJtYS4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 70784411FB2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7DAD9404E9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:21 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 08F9E3F758
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 09:16:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=JhZY9M53;
	dkim=pass header.d=redhat.com header.s=google header.b=d8eXW4MN;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771492602;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FvCQKIeQDulHEvNvZG4/Rs7O2SMt0AI9xdkS+RkTuNc=;
	b=JhZY9M531T8czRiInT97GVBotBybPRy7SrPLtErUizDPiAOXGpzzrVJC/xBQ2k/RY5jcpe
	CBT4mrAUlqNg/zYvYwlWRhdk4vJ/OVGxSkOpSp/rlSao4zSx3c8SLEsIaBh1p7i5uJ2n5O
	w9BadVN9XS+RwLGUHYJyav/Rq26n1N8=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-265-pus-d7EfMGia-LwGrQF47w-1; Thu, 19 Feb 2026 04:16:41 -0500
X-MC-Unique: pus-d7EfMGia-LwGrQF47w-1
X-Mimecast-MFC-AGG-ID: pus-d7EfMGia-LwGrQF47w_1771492600
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-4836fbfa35cso4179975e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 01:16:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771492600; x=1772097400; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FvCQKIeQDulHEvNvZG4/Rs7O2SMt0AI9xdkS+RkTuNc=;
        b=d8eXW4MNpRkvmg46J1K0VFfjB6E5bkU1ITc8w4bq2j+3CEXV8PPQgdMuCPzh65MXO8
         U6iwFB12Bmf6E7rdecVcdRDH94hLLtHNfD0sg2cRxz+PKNOVufC3xKIoZAuBbbE8a8/H
         qAIXyiGzogjCsph2ZzOKlg220PciFI9OGFBKS/h9lNTg6CgREEs8MiiGo8nuS/7f3SLR
         1F2smKUUqdy8AqtQEjiRlMDPFePm2sJ1Kvn2rs5pkGTFyR2ZUdFjklDPUEzwiURrof0r
         Ws4jrnb5JFNs/dTLjEJqaNPNsCkREHja8eJUKHbWWSCHPvwkhMXhKcdwSowbIjHSOrni
         W60w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771492600; x=1772097400;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FvCQKIeQDulHEvNvZG4/Rs7O2SMt0AI9xdkS+RkTuNc=;
        b=UP7OcNxXi6bPG88cNr2Qg/T8GipKjCf79Q5Qg0q4clMcjssalc73fXQCjysMjr8oJZ
         34qEjTbaXrCEP7mgFWRg3zuGTAXdXIpsC12vCDGPV2xK73JEhCfVexyTWTCc8HKrB4RU
         //Tl3JXlLoxY264owvk0yww2b9kQqot7tZYiOGTUEnucMilw/5KcP/xliGxcRIcZzWDl
         HkAxx1gpYOfijpkPvO5K8y352t56QsLc3UN2XsOx1CXsGHyzmLub8cvOjo2uTihAJj+8
         Z4CpMmULOnoGV6jpw5AWDtlQyM5C9mH1SXthC1RynPWvgVoWHmScFsbSIWAT8wO/s9Uv
         Bdqw==
X-Forwarded-Encrypted: i=1; AJvYcCVP9LsAB+Ty4XP0gNLEEpEV6zdqcH2SNRbjrlvxdmaU4TQnGxdqN2NguqbNIIT0lFGgh28/dynxojm01Fbj@lists.linaro.org
X-Gm-Message-State: AOJu0Ywt5p6dXu9spY0blSi+xVZg9L2f5qN7UZuh2tesobyKi1z2gar+
	fpsyuZTExzuMI/ioEIQBYSP/FOQWbXVlEN7iUZPEPMRmbYiKUOGsAnxJfls3I9Q9tNQQpnFdmbV
	353aBFArv5+zz1sxO3QrAcf/5om/hTW+wrKhtvxmtrx1e2oCO1gEe/oSoNKivZg9Sm36b
X-Gm-Gg: AZuq6aJbKFkunEmiventkhyPX2EP580bRJHkYlRGfRHVBJMg2Qfa34g6cy+H4gh7eU5
	Q/pxdnzCOIPi/T0bi2svJC28aYuMQxTrNpGG32mIYkAKJzSU9SAIZWnRD+3eMxWA7dHgRhwtPqX
	oyRuQbn4imP7VkFmGzvamzbGt4hzt+GimbTHy7tM1Zepyq7DWSUtb4OuQrS+nHt4CKqxq3Xwk72
	1X0eSQFz3jtupyXxtv0DHiUvtn7ZKxnMSeBvKl4XOeLJBzoiTYcZB6wCewuTv8jNg4n2+UG1kET
	Yd18KBwO8s7uSzQKBThA4wngeFTtaNwKQXOYshPq2Z2LKers1epqMyYv3xGBMRXB4T9UiGkaJQ=
	=
X-Received: by 2002:a05:600c:8289:b0:479:3a89:121d with SMTP id 5b1f17b1804b1-4839e66fc83mr23233515e9.36.1771492599595;
        Thu, 19 Feb 2026 01:16:39 -0800 (PST)
X-Received: by 2002:a05:600c:8289:b0:479:3a89:121d with SMTP id 5b1f17b1804b1-4839e66fc83mr23232985e9.36.1771492599016;
        Thu, 19 Feb 2026 01:16:39 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839ea1e7e1sm14492695e9.2.2026.02.19.01.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 01:16:38 -0800 (PST)
Date: Thu, 19 Feb 2026 10:16:37 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Eric Chanudet <echanude@redhat.com>
Message-ID: <20260219-illustrious-tungsten-starfish-5dad8c@houat>
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
 <20260218-dmabuf-heap-cma-dmem-v2-3-b249886fb7b2@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20260218-dmabuf-heap-cma-dmem-v2-3-b249886fb7b2@redhat.com>
X-Spamd-Bar: -------
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VCP2HZNMDPBQYHEEWDEXG2TLLVYHNLYM
X-Message-ID-Hash: VCP2HZNMDPBQYHEEWDEXG2TLLVYHNLYM
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:33 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/3] dma-buf: heaps: cma: charge each cma heap's dmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VCP2HZNMDPBQYHEEWDEXG2TLLVYHNLYM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4153535442750528749=="
X-Spamd-Result: default: False [1.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1351];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	DKIM_TRACE(0.00)[redhat.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.976];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 70784411FB2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============4153535442750528749==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="qbjavhllvvchwpql"
Content-Disposition: inline


--qbjavhllvvchwpql
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 3/3] dma-buf: heaps: cma: charge each cma heap's dmem
MIME-Version: 1.0

Hi,

On Wed, Feb 18, 2026 at 12:14:12PM -0500, Eric Chanudet wrote:
> The cma dma-buf heaps let userspace allocate buffers in CMA regions
> without enforcing limits. Since each cma region registers in dmem,
> charge against it when allocating a buffer in a cma heap.
>=20
> Signed-off-by: Eric Chanudet <echanude@redhat.com>
> ---
>  drivers/dma-buf/heaps/cma_heap.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma=
_heap.c
> index 49cc45fb42dd7200c3c14384bcfdbe85323454b1..bbd4f9495808da19256d97bd6=
a4dca3e1b0a30a0 100644
> --- a/drivers/dma-buf/heaps/cma_heap.c
> +++ b/drivers/dma-buf/heaps/cma_heap.c
> @@ -27,6 +27,7 @@
>  #include <linux/scatterlist.h>
>  #include <linux/slab.h>
>  #include <linux/vmalloc.h>
> +#include <linux/cgroup_dmem.h>
> =20
>  #define DEFAULT_CMA_NAME "default_cma_region"
> =20
> @@ -58,6 +59,7 @@ struct cma_heap_buffer {
>  	pgoff_t pagecount;
>  	int vmap_cnt;
>  	void *vaddr;
> +	struct dmem_cgroup_pool_state *pool;

I guess we should add an #if IS_ENABLED #endif guard for dmem?

>  };
> =20
>  struct dma_heap_attachment {
> @@ -276,6 +278,7 @@ static void cma_heap_dma_buf_release(struct dma_buf *=
dmabuf)
>  	kfree(buffer->pages);
>  	/* release memory */
>  	cma_release(cma_heap->cma, buffer->cma_pages, buffer->pagecount);
> +	dmem_cgroup_uncharge(buffer->pool, buffer->len);
>  	kfree(buffer);
>  }
> =20
> @@ -319,9 +322,17 @@ static struct dma_buf *cma_heap_allocate(struct dma_=
heap *heap,
>  	if (align > CONFIG_CMA_ALIGNMENT)
>  		align =3D CONFIG_CMA_ALIGNMENT;
> =20
> +	if (mem_accounting) {
> +		ret =3D dmem_cgroup_try_charge(
> +			cma_get_dmem_cgroup_region(cma_heap->cma), size,
> +			&buffer->pool, NULL);

This alone doesn't call for a new version, but adhering to the kernel
coding style would look like this:

+		ret =3D dmem_cgroup_try_charge(cma_get_dmem_cgroup_region(cma_heap->cma),
+					     size, &buffer->pool, NULL);

It looks good to me otherwise,
Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--qbjavhllvvchwpql
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaZbU8AAKCRAnX84Zoj2+
diB9AYDhkg6+tBwkM8yMFN9/WFT+hpPNlhGw0UEY/ZE0DHuKywzN1rTS3USBgeXc
4vi8MkIBgIRG4eHa1thavtEHDzWooCqiLhwDczcPdIil4bWekTGZxgf1mQQHrqGd
pK5ZeNH5CQ==
=YZKD
-----END PGP SIGNATURE-----

--qbjavhllvvchwpql--


--===============4153535442750528749==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4153535442750528749==--

