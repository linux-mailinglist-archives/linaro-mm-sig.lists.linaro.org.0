Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jBPhLVhyVmrm5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:31:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 406DF75774A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:31:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b="l/+EIVZ1";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5786840470
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:31:03 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by lists.linaro.org (Postfix) with ESMTPS id 6364240160
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 09:47:57 +0000 (UTC)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-81e9f7491ffso34531197b3.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 02:47:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784022477; cv=none;
        d=google.com; s=arc-20260327;
        b=PsfvJK2TACq07vDVT5fmTLw4b304LZrSJbre9WyDycJV4Tg1Sbywp2wQHXilu7T7QS
         LWedMBqConiI0FzoN8WX5U3uIAdjNsOU/RlhKpdlv66SJwJS9eSQ7VqUk+6lzwzAB0ch
         eEJP9sx8mv49NpxflFAgjAUtQNfNcQxLl2WLjoBjeWbksgS4B3J5gWPDI4gRQv2AZTjv
         0aew0/NcEtEIVNbsjdUc1ajbCtPd8bTwCPExQO23cEGcVvt6XuNg/Yq3BWq5RXMPaBPH
         eog9/cilE6KBMMX+BY+wpxGCKoUSTnohKmDSjnEN7rdwSp0a6t3/KyAoTiZd/bc5cRn/
         cQlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:dkim-signature;
        bh=mNe9rM8ZI02kYm64C7ciEQBT8YD2/cothZS9irUHQA8=;
        fh=VYsrLGgUbwvXiXDwIJfZswIGfVvgwtLbBhPEs7XdmPg=;
        b=hli7m6ew8bqw1sRyhUImpK8phKNH9cji+J+ie6lzgRYYcmLueKQBaY+aC5ySjOnV0Q
         rUVbb5mC4/XMLX7/7Z2IppnfCuSVXP9Z1XxYxhcdB9+WGCLl5OL6dMOfjOIRayZZovKh
         s5BzsX+FM7Eq5nYpzLY+Cv/r2T+RzQEjf2f82jb4I1R1FeNmJJcywEx7WKDSa8EiqxR7
         pPqjoaer+jpTEHdbWOlOzO9POQLVRpyqEQZUDmqCeKtX1sgyyWQ8EnqmWx9NTLkW/ezp
         lb5H5Fe53yzVpwf9PzF8ShHrPP4CRtbYehznsyAV/6rQjZXD6390H1FSFNl6N4RW2fCL
         0chQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1784022477; x=1784627277; darn=lists.linaro.org;
        h=content-type:cc:to:subject:message-id:date:mime-version:references
         :in-reply-to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mNe9rM8ZI02kYm64C7ciEQBT8YD2/cothZS9irUHQA8=;
        b=l/+EIVZ1IOoP2DOtIjkdSvhnKf96Di9ZDGWHjJgHRBdi3APUGGyWQZiraRkA67RXrs
         NyV70SVsPpwKzMs9g0h3hgFrYqGay/G+KM/umJ8F+wlLRooffHWD+D/DGuq0T1ql1aDG
         B6zhU90aL0Ot/k0spywPcZDxAI4ylhgLGXmLojOXKPSpDNON5oLqxODIw9O5Tdfdh4/Q
         o92kz+7Qr7ELL97YV5yC3J7mH8cd3Xu2wCT+M25DVjJ/oRBrhLBtv1BjSFFX/MRmu3jp
         JAFiidBMn3m3pJ1lq0Hi0erSKteatO7xXrndq1fxmlV11STPoAVPZ8kZNvm40H1hmDKt
         rO8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784022477; x=1784627277;
        h=content-type:cc:to:subject:message-id:date:mime-version:references
         :in-reply-to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mNe9rM8ZI02kYm64C7ciEQBT8YD2/cothZS9irUHQA8=;
        b=hlzZsSJn2CWKF9nZilmpnwWWxOdYcEYSMdOG3syOG1tW0PTseqRlNGd2/kGj/4r6Ad
         1d8RjqT2hGrTpKCP7poFVUcUeBdQy9SpFpSLauacJzwV3CEwUd0r9Zz/9yv/JZ6w9lUB
         x5Z6wND0Kq3BWdJr0KaUPpXUQ1beAmu7Z/kXSS1S65knG0OmxT4jHNaeJqv3sXeJdvXC
         GtNhlIGf12YH3+n1J8qSk2UHrycfgST385m4XrTpaXF/krZX1whTexO4oYrX+Pn4cZAR
         od3UzINFmFB+OAD2++i32FckW2f6EsyXFkdb+lLuJSv8ZehPXPbBAJKLiuJXHa/6ilz2
         lLhA==
X-Forwarded-Encrypted: i=1; AHgh+Ro5dTsoMkQCksO7qUXpJzQMZTWvMBL395MDpBXoZ9BgTBJStsYafNR3r7dn320yv1PErky+TZYtQTGRuhpl@lists.linaro.org
X-Gm-Message-State: AOJu0YwdAfV2ZadH+BSJ7GkfMPHw41cTGE3l0/4lX+hbmCzPfNTlrzCt
	er/16FO6RP0zU8T3tqVONLRIOVCppV16iidpgo3TSmuBUU48UTrTdXqwlTvwaTPlQ4GLUfoZ6+R
	n4xCPIRusIHCm0S6+GZDi2c0Oy2bxcVqp5Lc+VmnkgJRWAG6loKjVrxC1
X-Gm-Gg: AfdE7cnln1kRuiD0CpybZpwmP4DF5MUsbzz+4a6PHrzdLrkIHsaS7iv2ueMsMGIVLi9
	lQbmB5mONK51ns2rG1vSbG+770SxlAUN82Ezau3Ij+509I5qNvOHr5vOFk9tBjNqIe0KmNXGrTy
	Gv2xwK7h7nTbyN6RXqVpbwqc+8b/sBd/sVTaZO6FQFiMHLGvcqkGoTwyKwF/8ToXYdUappEOg/4
	OOveNA/tveoRYGPExpQ9TMxN7Me73YNEVuYuQYmXRfZHGVKZA8CUzqDbUmqRNCOldvBjbxrCrMk
	DNYAoHcJcOCJKyeQJP779iAIMJmByX0dVQknHGwpDPq+sZ6IPVgOgYj2pFM=
X-Received: by 2002:a05:6a20:cd8f:b0:3bf:83f3:b810 with SMTP id
 adf61e73a8af0-3c110a7b287mr11689858637.29.1783984563364; Mon, 13 Jul 2026
 16:16:03 -0700 (PDT)
Received: from 176938342045 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 13 Jul 2026 16:16:02 -0700
Received: from 176938342045 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 13 Jul 2026 16:16:02 -0700
From: Ackerley Tng <ackerleytng@google.com>
In-Reply-To: <20260712221934.GF674038@nvidia.com>
References: <20250529053513.1592088-1-yilun.xu@linux.intel.com>
 <20250529053513.1592088-11-yilun.xu@linux.intel.com> <20250602133009.GC233377@nvidia.com>
 <CAEvNRgFpJWQ5M5sQhGpQUV3GbBq9N+MQhhaxdxa=D8ky94SCsw@mail.gmail.com> <20260712221934.GF674038@nvidia.com>
MIME-Version: 1.0
Date: Mon, 13 Jul 2026 16:16:02 -0700
X-Gm-Features: AVVi8CczeGanVcGdhsy5HlDfD2XYPmjZautNceRH5dXiMXcxQCHaSODxjV4xdX8
Message-ID: <CAEvNRgEo2kLUmaGU-Vsgx2sTQvU_NNUJ4bRp5Z4Ygs_xvVLOYA@mail.gmail.com>
To: Jason Gunthorpe <jgg@nvidia.com>
X-Spamd-Bar: ----
X-MailFrom: ackerleytng@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XWV4OE3WZKNGSJ4HRB3QDQMOCUBOCPBH
X-Message-ID-Hash: XWV4OE3WZKNGSJ4HRB3QDQMOCUBOCPBH
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:21:06 +0000
CC: Xu Yilun <yilun.xu@linux.intel.com>, kvm@vger.kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, dan.j.williams@intel.com, aik@amd.com, linux-coco@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, vivek.kasireddy@intel.com, yilun.xu@intel.com, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, daniel.vetter@ffwll.ch, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com, linux-pci@vger.kernel.org, zhiw@nvidia.com, simona.vetter@ffwll.ch, shameerali.kolothum.thodi@huawei.com, aneesh.kumar@kernel.org, iommu@lists.linux.dev, kevin.tian@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 10/30] vfio/pci: Export vfio dma-buf specific info for importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XWV4OE3WZKNGSJ4HRB3QDQMOCUBOCPBH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jgg@nvidia.com,m:yilun.xu@linux.intel.com,m:kvm@vger.kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:pbonzini@redhat.com,m:seanjc@google.com,m:alex.williamson@redhat.com,m:dan.j.williams@intel.com,m:aik@amd.com,m:linux-coco@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:vivek.kasireddy@intel.com,m:yilun.xu@intel.com,m:linux-kernel@vger.kernel.org,m:lukas@wunner.de,m:yan.y.zhao@intel.com,m:daniel.vetter@ffwll.ch,m:leon@kernel.org,m:baolu.lu@linux.intel.com,m:zhenzhong.duan@intel.com,m:tao1.su@intel.com,m:linux-pci@vger.kernel.org,m:zhiw@nvidia.com,m:simona.vetter@ffwll.ch,m:shameerali.kolothum.thodi@huawei.com,m:aneesh.kumar@kernel.org,m:iommu@lists.linux.dev,m:kevin.tian@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ackerleytng@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[google.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ackerleytng@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,mail.gmail.com:mid,linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 406DF75774A

Jason Gunthorpe <jgg@nvidia.com> writes:

> On Sat, Jul 11, 2026 at 06:01:31PM -0700, Ackerley Tng wrote:
>
>> In the course of a CoCo guest's operation, will the guest need to
>> convert between private/shared MMIO? Will the guest need some pages
>> shared and others private? If these are required operations, guest_memfd
>> already provides the tracking and is going to have a conversion ioctl
>> very soon. Instead of further extending dmabuf to track more things, how
>> about letting guest_memfd track it?
>
> Use another FD type was sort of my fallback if we couldn't get DMABUF
> into something workable. I'm kind of surprised to see guestmemfd
> proposed as the other FD, but I don't know much about its insides.
>

For now guest_memfd only supports 4K pages, so the interfaces we're
interested in are:

+ The .fault() handler, which core mm calls to service any page
  faults. For this, guest_memfd first checks if the page is shared, and
  if so, proceeds to return a struct page.
    + For VFIO, guest_memfd could call vfio_pci_mmap_huge_fault() and do
      vmf_insert_pfn().
+ The kvm_gmem_get_pfn() function, which kvm calls to get a pfn and a
  max_order to set up stage 2 page tables. Now guest_memfd returns
  folio_pfn(folio) and max_order = 0 since guest_memfd only supports
  PAGE_SIZE pages now.
    + For VFIO, guest_memfd would need some way to get the PFN, so
      probably something like dma_buf_get_pfn_unlocked() [1], but
      probably from VFIO instead of dmabuf. Perhaps pci_resource_start()
      is good enough to get a pfn.

[1] https://lore.kernel.org/all/20250529053513.1592088-2-yilun.xu@linux.intel.com/

> If VFIO can create one

At guest_memfd creation time, guest_memfd is always created for a
KVM. This is the first place where it is bound to a kvm instance. This
is one place where it helps Yilun with Confidential VMs, so KVM can be
sure that the memory was meant for a specific CoCo kvm and not any VM.

I think it might be weird to have VFIO take a kvm fd to create a
guest_memfd?

I was thinking that the userspace VMM could do something like:

  int vfio_fd = open("/dev/vfio/devices/vfio0");
  int gmem_fd = ioctl(KVM_CREATE_GUEST_MEMFD, { .fd = vfio_fd });

and creating from a template fd would also disable/close the vfio_fd so
that the following will fail:

  addr = mmap(vfio_fd);  // Maybe this should fail too?
  *addr = 1;             // But this should definitely fail so that
                         // guest_memfd gets to block private writes.

> and fill it with MMIO physical addresses then
> maybe it is OK?
>
> Jason

What interface would be used fill a guest_memfd with MMIO physical
addresses?

When a vdev is associated with a vfio file, can some other vfio file be
created that can also do MMIO to the vdev's PFNs? Would I be able to set
something to block any future associations to those PFNs? This will help
guest_memfd to prevent any other writes to private PFNs.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
