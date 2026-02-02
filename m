Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAZSInUQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:38:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 47716411C94
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:38:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 072D844B17
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:38:12 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 7234E3F677
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Feb 2026 10:12:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=c1J3hUex;
	dkim=pass header.d=redhat.com header.s=google header.b=cFZKPOXG;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770027162;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=T8trzVS4ZUCHrBPpOVXGPFbB+m6G0A2WMMBaMJLn58s=;
	b=c1J3hUexP3c8TKmy7G1BL+02diZtlGzmE4nUvaczA9Uo2rvOTNWaWECRY4xk+7SbPxTQ7p
	/RiTOWgnMZIjG4P7pU1kvswtSgIifb8Zr6yKSr9qtW2FTgeJBiOQBXG1vdUNwyNT2+nr4f
	Roo0rG0Sovp6RvhTubx5UCnXTl3dQO0=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-336-0qTXEzMfNHOhkJp86old8w-1; Mon, 02 Feb 2026 05:12:40 -0500
X-MC-Unique: 0qTXEzMfNHOhkJp86old8w-1
X-Mimecast-MFC-AGG-ID: 0qTXEzMfNHOhkJp86old8w_1770027159
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-430fe16b481so2780180f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Feb 2026 02:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1770027159; x=1770631959; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=T8trzVS4ZUCHrBPpOVXGPFbB+m6G0A2WMMBaMJLn58s=;
        b=cFZKPOXGeZjZ7C/XqcLP74fAJ3J8xiqW10mGU6ZT6wREROmmzWb1Pz7BZ7Gw9geZIm
         cNcYZQRGXWygsZ5nYHE/DP5L2h3GUB0+3HkCDDI3Ql15i27wuKPjoKRUThtVPI2EKlEn
         oR8PANQeeXe8JEdnN3oQxrUIIUs7vmDk/KYcA2j0i4GbxWmnQ12m3PjAUshSEahmDvy2
         d8G2qgp4jzwIeMVFmZ0Bdf6UylvE6CqqjFDhjEtqHfrPsL53pkzNUbkNUNb5+Cln11g2
         IkARkKblWdzgMsmEtWndUOF8OK0E1xnEoUreDkTkqhbCAXKik1xbMwZoKCLM+ztHwyVA
         MXtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770027159; x=1770631959;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T8trzVS4ZUCHrBPpOVXGPFbB+m6G0A2WMMBaMJLn58s=;
        b=NNGipYv8x/4iFtpbSBTMy++08y0xsk6Rnt7UEa+j8+crPqxAGo+GMj59pxxPYPn78q
         lLKKAY5W5tVbhuln464cT6EI+ekBcFo8mJLaBWa0OX+1eyGXHSIkgIeTFOyAv5o7dpyB
         bsH+lFTAiRRkFEl7BMj3EY4KzwvIF77zwaB0ASrEb2MT7tjYVRjMVtF6ZIN6tpKgzMXv
         RYw9DuvgsZEST78Ov4dRWoT9992B45phJ3NBN9Rd2KXXR5G5pI+KIso1H9GCQydYHLHO
         eY+342AqUlUamkQXbJRoxlDpBgTNg5Rz/L60gboWvKAY0MVkDb1Fu9TmiZRN/jzmFx8U
         DN4w==
X-Forwarded-Encrypted: i=1; AJvYcCVsU6NEXP34YMfHFj1XA2SQqnWBe/DNyQaO1SsBIKyHnhCqQX9DVmaU1T5e9c1+7pHBmesEp4D40WmlbAaY@lists.linaro.org
X-Gm-Message-State: AOJu0YzJNm4GWEVlUUn+sRLD94DWv0rn1uvEO2CwOZM24KLiOx4rDbwS
	98ADXvm1Kb4MaieUyb62MUaNjOPL4McyFY67z+/iRb72IAt70PInWEtF4hi8j6pez5QnjLzT4iD
	PcMlFYTRK9tjXNdGQ6Und+kOkilkTTycaZfbNlmlHubwm4zSxh9gp0MNHReQ0JgGwvYvk
X-Gm-Gg: AZuq6aI/DH45ZO1ICZSQfDbJyvwRs8g/h/8F2TQcLlhaqYUHYIkW6L3XuOtVTxKI1qS
	+WalPEUMTR4OO13mqYq6Q24JNjHGCZv0bv0sr8BjlS/6aHJUMJlb17+reQHEW2WcF5XgJFlitAp
	k1enTQGspqxLav8OtMWbaWpbjzEyBN9Lwgj3TCcONsNktGc1elbgIa1pqUfSG5KLxsFEZTBQgSa
	Ba9HrcS1nrvsrxeydlAdzSEnmtRSEqSy6pCflWG7bGvmhnj4bW5UExqmd03c6Qm9WmAsb2643d4
	xj8gCsASmBLBDCv8p3LWHforloU0vgqaE+XRkNCPlhIouZ3r1LFp4UKqXDOIOw==
X-Received: by 2002:a05:600c:6092:b0:47a:7fdd:2906 with SMTP id 5b1f17b1804b1-482db45441fmr144478635e9.12.1770027158988;
        Mon, 02 Feb 2026 02:12:38 -0800 (PST)
X-Received: by 2002:a05:600c:6092:b0:47a:7fdd:2906 with SMTP id 5b1f17b1804b1-482db45441fmr144478255e9.12.1770027158488;
        Mon, 02 Feb 2026 02:12:38 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806cddffe9sm555222985e9.4.2026.02.02.02.12.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 02:12:37 -0800 (PST)
Date: Mon, 2 Feb 2026 11:12:37 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Eric Chanudet <echanude@redhat.com>
Message-ID: <20260202-wealthy-quick-cow-8c5421@houat>
References: <20260130-dmabuf-heap-cma-dmem-v1-1-3647ea993e99@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20260130-dmabuf-heap-cma-dmem-v1-1-3647ea993e99@redhat.com>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GGJKTKK7QGPKIPRTWCB4SKWSPVMBUADN
X-Message-ID-Hash: GGJKTKK7QGPKIPRTWCB4SKWSPVMBUADN
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:01 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Albert Esteve <aesteve@redhat.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: cma: register a dmem region for each cma heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GGJKTKK7QGPKIPRTWCB4SKWSPVMBUADN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============7118898028492949707=="
X-Spamd-Result: default: False [1.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1758];
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
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[redhat.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.793];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 47716411C94
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============7118898028492949707==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="ourfsz72devil6zd"
Content-Disposition: inline


--ourfsz72devil6zd
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] dma-buf: heaps: cma: register a dmem region for each cma
 heap
MIME-Version: 1.0

Hi,

On Fri, Jan 30, 2026 at 05:55:30PM -0500, Eric Chanudet wrote:
> The cma dma-buf heaps let userspace allocate buffers in CMA regions
> without enforcing limits. Register a dmem region per cma heap and charge
> against it when allocating a buffer in a cma heap.
>=20
> For the default cma region, two heaps may be created for the same cma
> range:
> commit 854acbe75ff4 ("dma-buf: heaps: Give default CMA heap a fixed name")
>   Introduced /dev/dma_heap/default_cma_region
> commit 4f5f8baf7341 ("dma-buf: heaps: cma: Create CMA heap for each CMA
>                       reserved region")
>   Created a CMA heap for each CMA region, which might create a duplicate
>   heap to the default one, e.g:
>     /dev/dma_heap/default_cma_region
>     /dev/dma_heap/reserved
>=20
> Removing the legacy heap would break user API. So handle the special
> case by using one dmem between the two heaps to account charges
> correctly.
>=20
> Signed-off-by: Eric Chanudet <echanude@redhat.com>
> ---
> In continuation with introducing cgroup for the system heap[1], this
> behavior is enabled based on dma_heap.mem_accounting, disabled by
> default.
>=20
> dmem is chosen for CMA heaps as it allows limits to be set for each
> region backing each heap. There is one caveat for the default cma range
> that may accessible through two different cma heaps, which is treated as
> a special case.
>=20
> [1] https://lore.kernel.org/all/20260116-dmabuf-heap-system-memcg-v3-0-ec=
c6b62cc446@redhat.com/
> ---
>  drivers/dma-buf/heaps/cma_heap.c | 51 ++++++++++++++++++++++++++++++++++=
++----
>  1 file changed, 46 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma=
_heap.c
> index 49cc45fb42dd7200c3c14384bcfdbe85323454b1..608af8ad6bce7fe0321da6d8f=
1b65a69f5d8d950 100644
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
> @@ -46,7 +47,9 @@ int __init dma_heap_cma_register_heap(struct cma *cma)
>  struct cma_heap {
>  	struct dma_heap *heap;
>  	struct cma *cma;
> +	struct dmem_cgroup_region *cg;
>  };
> +static struct dmem_cgroup_region *default_cma_cg;
> =20
>  struct cma_heap_buffer {
>  	struct cma_heap *heap;
> @@ -58,6 +61,7 @@ struct cma_heap_buffer {
>  	pgoff_t pagecount;
>  	int vmap_cnt;
>  	void *vaddr;
> +	struct dmem_cgroup_pool_state *pool;
>  };
> =20
>  struct dma_heap_attachment {
> @@ -276,6 +280,7 @@ static void cma_heap_dma_buf_release(struct dma_buf *=
dmabuf)
>  	kfree(buffer->pages);
>  	/* release memory */
>  	cma_release(cma_heap->cma, buffer->cma_pages, buffer->pagecount);
> +	dmem_cgroup_uncharge(buffer->pool, buffer->len);
>  	kfree(buffer);
>  }
> =20
> @@ -319,9 +324,16 @@ static struct dma_buf *cma_heap_allocate(struct dma_=
heap *heap,
>  	if (align > CONFIG_CMA_ALIGNMENT)
>  		align =3D CONFIG_CMA_ALIGNMENT;
> =20
> +	if (mem_accounting) {
> +		ret =3D dmem_cgroup_try_charge(cma_heap->cg, size,
> +					     &buffer->pool, NULL);
> +		if (ret)
> +			goto free_buffer;
> +	}
>
>  	cma_pages =3D cma_alloc(cma_heap->cma, pagecount, align, false);
>  	if (!cma_pages)
> -		goto free_buffer;
> +		goto uncharge_cgroup;
> =20
>  	/* Clear the cma pages */
>  	if (PageHighMem(cma_pages)) {
> @@ -376,6 +388,8 @@ static struct dma_buf *cma_heap_allocate(struct dma_h=
eap *heap,
>  	kfree(buffer->pages);
>  free_cma:
>  	cma_release(cma_heap->cma, cma_pages, pagecount);
> +uncharge_cgroup:
> +	dmem_cgroup_uncharge(buffer->pool, size);

Should we make that conditional on mem_accounting =3D=3D true ?

>  free_buffer:
>  	kfree(buffer);
> =20
> @@ -390,25 +404,52 @@ static int __init __add_cma_heap(struct cma *cma, c=
onst char *name)
>  {
>  	struct dma_heap_export_info exp_info;
>  	struct cma_heap *cma_heap;
> +	struct dmem_cgroup_region *region;
> +	int ret;
> =20
>  	cma_heap =3D kzalloc(sizeof(*cma_heap), GFP_KERNEL);
>  	if (!cma_heap)
>  		return -ENOMEM;
>  	cma_heap->cma =3D cma;
> =20
> +	/*
> +	 * If two heaps are created for the default cma region, use the same
> +	 * dmem for them. They both use the same memory pool.
> +	 */
> +	if (dev_get_cma_area(NULL) =3D=3D cma && default_cma_cg)
> +		region =3D default_cma_cg;
> +	else {
> +		region =3D dmem_cgroup_register_region(cma_get_size(cma), "cma/%s", na=
me);
> +		if (IS_ERR(region)) {
> +			ret =3D PTR_ERR(region);
> +			goto free_cma_heap;
> +		}
> +	}
> +	cma_heap->cg =3D region;
> +

I'm not sure it's the best way to go with this. We want to track all
relevant CMA allocations going forward, in the heaps and elsewhere.

If we were to do what you suggest, an allocation in, say, DRM or v4l2
wouldn't be tracked in the same region than one in the heaps, while we
want to have it cumulated.

I think we'd be better off if we created a dmem region for each CMA
region in the system, but we would charge from the heap so we don't
account for every allocation.

I don't think we can register the dmem region when the CMA area is
initialized though, since it will probably be too early in the kernel
boot and SLAB isn't around yet.

But since we would need an accessor to get a dmem region from a cma
region, we could do something like check if a dmem eregion already
exists for that cma region, and allocate one otherwise. Or have a
secondary initcall to allocate all dmem regions.

Maxime

--ourfsz72devil6zd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaYB4kAAKCRAnX84Zoj2+
dqPBAX9oydlm9YZRNx1uUYcnGj8czxCI9/nwwv3lTG3vB/96CaCaciG72JRvyD2+
YtcMBPEBf2UZP8KVV1tDJ+oujyCdJZXIsjWxMc55iL7AcfydJqlROACsQSaGrLgZ
L+gEjF3czQ==
=dD0c
-----END PGP SIGNATURE-----

--ourfsz72devil6zd--


--===============7118898028492949707==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============7118898028492949707==--

