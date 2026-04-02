Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKncMvJj5mkuvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:35:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FED4318B5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:35:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7158240690
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:35:45 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 50B993F90B
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 12:23:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=CvHhZo36;
	dkim=pass header.d=redhat.com header.s=google header.b=bh2e+PPz;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mripard@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1775132599;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=xRxSNukj518ppA3ZO+j946SBDUenrVVHerZheyJEcDQ=;
	b=CvHhZo362ATfCvP5SP9xyxfErRuDRDS2aSDcjtQmOkMzEnLVWceNKg4TeTbotRfHHQMXWq
	tPlFcW8qI/GDMdzBQ4v974GO718+YmJh/J8j2IwaHdQd/k596NdT0U0ARRfzpY5cAmRNCv
	vT5GJ2FLnDjDtu5al30CqQlOHrnyGIo=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-64-arpstLc3OqiCFw4KPJ7YpA-1; Thu, 02 Apr 2026 08:23:15 -0400
X-MC-Unique: arpstLc3OqiCFw4KPJ7YpA-1
X-Mimecast-MFC-AGG-ID: arpstLc3OqiCFw4KPJ7YpA_1775132594
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-43d02fa5860so877945f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Apr 2026 05:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1775132594; x=1775737394; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xRxSNukj518ppA3ZO+j946SBDUenrVVHerZheyJEcDQ=;
        b=bh2e+PPzfX4j4Z2W3U8s0ObstoiLSX/OaYF3i/mY/oDWR+bnAfVmZrIwwUeiKUluOR
         0lUt/mzjn3hNgrJlwMc/UZzrM+oTxrllGNVE5IH5BGkmssneqEZFdmdDnzAZTK4jHib8
         4V3KM10LyeHl0q5qi5QY04Exa9pH0iODwacnYMYkGDmZNhhgeXjAp6hJMEK1F+d3LC9j
         2Q+sqHevhYNN7dG7LkcNklgB+NxIpaNITW3HwfuuaNd6asxA0SRoZkNkY2XaW3sLsWI1
         cFVQP2Sj6zG0vo9+TylFJs8oeXr1QP4u+GQnIkPJogNfrjpBdnJSl5o/CtuXBXtOHj2N
         XUHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775132594; x=1775737394;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xRxSNukj518ppA3ZO+j946SBDUenrVVHerZheyJEcDQ=;
        b=R1vwj+rSiMmIw916i/EWN0NW6ShyfbSglulpRm6IRh9WKb5rCLVoxc6Xd9Oqk6URsh
         4OBts9rhlJgvbFoPsL82OiPL/SIB4Zq51pucG2OkXN6UXUKysfmXZpW4+/5XxnY8+OJG
         bW8/HDBAG4Iz1ezXLj4I0o7y2pokwpYog2Ws1tV0lLZQDUsjfvK+UMDjmxWzGkIyUaI+
         XOhe/HPLQzWhVRtnkZJuTxYKERW68TWJbGfkMvnCQabYpeLJdfAkysOyH+D+F7oLuhun
         zojLqIwID8TWigUP4jbUMrOzEw/D6w0BV1dOGCXZgI2GgGS8GWm375kEk5UJXFb3BwEN
         wmzw==
X-Forwarded-Encrypted: i=1; AJvYcCXhncLduM9lSc2sUvvvZgAdi3xlZ+uoR7bdTwi0Ech0lkjhq682s8SaP3rsGStUlYeKaC5ISZigWiYVuVUw@lists.linaro.org
X-Gm-Message-State: AOJu0YwJvGq7lHRWLEJxeE1uKhWepov6dGhgfi+mioNyQ04st5+8U4Xh
	/w2oSulT5uZp8QmUd7tPzYtvyRfDjP5UO3V2QvnyhBonpRfinF0p3zKRk9Jsvpnus1E5CUJ3TWJ
	XVRVLbZSYa1mNF00zZt2w8N8B8hce53aHEf+4iY5seOKQG9jpX50Bpi2hcEQl4kYL364g
X-Gm-Gg: AeBDievH65/DD8Ze0JJgCh/nLx1v5XHNjbgZ1CG9Xojf4eYbOeEqqSHLJcoH7+qoWt1
	BvGtX71/Vfh6Z8jR3cXP/1k2/2JtiV85fqNEPk1tIC0b9NBidOfzL+4cWxSxxTByzRPwu2+C6zh
	gh6+6PmtzRvHuN6jf3A5JAjeQhKRuIGrVHLDMvO9Nqm4OfZ2h3Ne5cCdUwf89+RmvGnzCqavcmy
	fJxdtDArH9eMX/5Z/wZtHnQ4S+abQcl0/hPOPBeg3SoyuXx8mk3tWz24IP+nhl9yisTABTsWEhL
	jgoNa2nLFPKj1i9ayQ9w7rF/mY3+zWYle/nOMTLMZgukN/Ctxy4F3f8ZRwHS5rLrD18S8HY4qQ=
	=
X-Received: by 2002:a05:6000:2409:b0:43b:6a16:17e with SMTP id ffacd0b85a97d-43d1505b105mr13705390f8f.11.1775132594207;
        Thu, 02 Apr 2026 05:23:14 -0700 (PDT)
X-Received: by 2002:a05:6000:2409:b0:43b:6a16:17e with SMTP id ffacd0b85a97d-43d1505b105mr13705319f8f.11.1775132593703;
        Thu, 02 Apr 2026 05:23:13 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43d214f2b63sm4510096f8f.28.2026.04.02.05.23.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2026 05:23:13 -0700 (PDT)
Date: Thu, 2 Apr 2026 14:23:12 +0200
From: Maxime Ripard <mripard@redhat.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20260402-discreet-glossy-perch-bda4f9@houat>
References: <20260325192352.437608-1-jiri@resnulli.us>
 <20260325192352.437608-3-jiri@resnulli.us>
MIME-Version: 1.0
In-Reply-To: <20260325192352.437608-3-jiri@resnulli.us>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3MOJDETELE7QWQ5FECYS5PGZRMWMDB45
X-Message-ID-Hash: 3MOJDETELE7QWQ5FECYS5PGZRMWMDB45
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:43 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/2] dma-buf: heaps: system: add system_cc_shared heap for explicitly shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3MOJDETELE7QWQ5FECYS5PGZRMWMDB45/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2952927877709686903=="
X-Spamd-Result: default: False [1.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[437];
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
	RCPT_COUNT_TWELVE(0.00)[25];
	DKIM_TRACE(0.00)[redhat.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.847];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,nvidia.com:email]
X-Rspamd-Queue-Id: 63FED4318B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============2952927877709686903==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="e65sn5i4kwgewwdb"
Content-Disposition: inline


--e65sn5i4kwgewwdb
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 2/2] dma-buf: heaps: system: add system_cc_shared heap
 for explicitly shared memory
MIME-Version: 1.0

Hi Jiri,

On Wed, Mar 25, 2026 at 08:23:52PM +0100, Jiri Pirko wrote:
> From: Jiri Pirko <jiri@nvidia.com>
>=20
> Add a new "system_cc_shared" dma-buf heap to allow userspace to
> allocate shared (decrypted) memory for confidential computing (CoCo)
> VMs.
>=20
> On CoCo VMs, guest memory is private by default. The hardware uses an
> encryption bit in page table entries (C-bit on AMD SEV, "shared" bit on
> Intel TDX) to control whether a given memory access is private or
> shared. The kernel's direct map is set up as private,
> so pages returned by alloc_pages() are private in the direct map
> by default. To make this memory usable for devices that do not support
> DMA to private memory (no TDISP support), it has to be explicitly
> shared. A couple of things are needed to properly handle
> shared memory for the dma-buf use case:
>=20
> - set_memory_decrypted() on the direct map after allocation:
>   Besides clearing the encryption bit in the direct map PTEs, this
>   also notifies the hypervisor about the page state change. On free,
>   the inverse set_memory_encrypted() must be called before returning
>   pages to the allocator. If re-encryption fails, pages
>   are intentionally leaked to prevent shared memory from being
>   reused as private.
>=20
> - pgprot_decrypted() for userspace and kernel virtual mappings:
>   Any new mapping of the shared pages, be it to userspace via
>   mmap or to kernel vmalloc space via vmap, creates PTEs independent
>   of the direct map. These must also have the encryption bit cleared,
>   otherwise accesses through them would see encrypted (garbage) data.
>=20
> - DMA_ATTR_CC_SHARED for DMA mapping:
>   Since the pages are already shared, the DMA API needs to be
>   informed via DMA_ATTR_CC_SHARED so it can map them correctly
>   as unencrypted for device access.
>=20
> On non-CoCo VMs, the system_cc_shared heap is not registered
> to prevent misuse by userspace that does not understand
> the security implications of explicitly shared memory.
>=20
> Signed-off-by: Jiri Pirko <jiri@nvidia.com>

I'm a bit late to the party, sorry.

This new heap must be documented in
Documentation/userspace-api/dma-buf-heaps.rst, but (and especially since
it seems like it was merged already) it can be done as a follow-up
patch.

Maxime

--e65sn5i4kwgewwdb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCac5frAAKCRAnX84Zoj2+
dnVEAX9CFXx//98RE08S4/htofGJDNunF07/14IluU1iYb8+94vCMi2iUvSzXSKI
zbgrVRgBfRy+pMU2nc+zOonhVfFvK813bX4cN9vLtMfH0/h/fKnFJKCc5msL12k4
8g97/3uO3A==
=FGaV
-----END PGP SIGNATURE-----

--e65sn5i4kwgewwdb--


--===============2952927877709686903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2952927877709686903==--

