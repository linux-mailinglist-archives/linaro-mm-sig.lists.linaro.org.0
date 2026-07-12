Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /xtqFxByVmrM5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:29:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E20767576FC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:29:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=cQIRenzJ;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 067813F735
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:29:51 +0000 (UTC)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	by lists.linaro.org (Postfix) with ESMTPS id 367DA404BF
	for <linaro-mm-sig@lists.linaro.org>; Sun, 12 Jul 2026 01:01:35 +0000 (UTC)
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-ca913a601fbso1443354a12.3
        for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Jul 2026 18:01:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783818094; cv=none;
        d=google.com; s=arc-20260327;
        b=AGSwX/qiJZhvSRkYgg4TY2R3vU6y3/MSijBJr330ov9zAeEAvVU2iSUW7G1h6SbH0n
         uNp+nl6mgKRw575O879FcC64exbK2Qf0QXrUa4ihBIt887YsGS+h7tY7R9W/80HUwxxm
         C4nxx5cscpeXrzDt6RUHzUx8KFq0GSqwoUYnk4MQXyXOh0DkYD50M2Og4jKvp5M+m/RD
         TVmg5yECxgiZlaVNrh6xFbCOb3uNPhqIHhAX449h/omvVGGRvRDdGKltnM8znAQgWsVm
         o7uV6u/KNhNJfaytR5aOnACVcNe8k1PijGHzagrlUfr9ws6qoZ/5niwZvQeDrbKYKZWF
         8v8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:dkim-signature;
        bh=gGEYW3UAXERRsGZl8/IlnSaBkO9PGZLTdY+qnlryyhU=;
        fh=7a/X23ctDVTSX+4eGBzh0DP38s1vGi1M1lH7ZSvIKM8=;
        b=G8nhHYFtBDY1/yTe3G76WE77KFUKMt6OmMEmr5klPktCwHmFoU64sU6qiTsTByVx/g
         gb9uFwDHfPi/TV60HGMBg7240E3yxhgwhnW/5TqWM06JaWirZhRRNTgpZ3QcyytPWaOM
         yCnJxS2+JQljivP/r5paMH4aXNHn1TlN9ASnm4S1/pA1B8Bc6tsKUCZ4SrAxcxd+UWix
         jLaMvK1j4/KW9ohl1wFk/XgUjnDHLXbwbAfx7Nu8TUzoOXEQOpvnteMWwcJ/QT139JCD
         qUU6Ma6z1bVuyuNyAFZYrybZ123KPuMnj+5Dahm5iocvD8OD1LgBTSZdF96N0GgX1p3n
         +ReA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1783818094; x=1784422894; darn=lists.linaro.org;
        h=content-type:cc:to:subject:message-id:date:mime-version:references
         :in-reply-to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gGEYW3UAXERRsGZl8/IlnSaBkO9PGZLTdY+qnlryyhU=;
        b=cQIRenzJdfDQBGH7InkJPQNbnHbdWxs/1DeQgTlKed8thauOhXwVpdK0yLYkLXwhHG
         csQDiQeLfxc9J/nwMTBU9mRxOFTr/EaTGfRU2tfGZFxBB4iikb9uRkX3jASH6ZrGfEI/
         vEo5IBc0N4Z9mdj2YhJI2fOLhPFBx+/MaIV0ryfekQNBpb6Iwr3KcGku8GMhM9MD4p7y
         7K4506a5UejYE2e3CdkodGY7B6BytA+lYZH4W2sAfn9BAg6hWnuqPtDjgnobYOXncNZ8
         dQXagvPX8Z6NMr3wOngb1j6strnaIqfe2tjgD/GKtpw3KTtwWCq7mPY+n4gjhtUURv5b
         IojQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783818094; x=1784422894;
        h=content-type:cc:to:subject:message-id:date:mime-version:references
         :in-reply-to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gGEYW3UAXERRsGZl8/IlnSaBkO9PGZLTdY+qnlryyhU=;
        b=GFDYSXAgL8CyzzNx1rCu6E8SgCRmZGiQNM6aao9SJDa5Bbtuykx9zoTOu1sPscMysp
         gP9+UG6t8Q+7Jk0wuLt+DJOYqmg7VLk8VUWc04qXXqtidgMbBiCAUn9CvYnRxAbK/tRV
         JtG8nc6qKeGP+bPqs+yHGH7K3bruWtba5uFul8N5QobYBOXtlgpwq1JSD7YFtNS5H39s
         RaeQSW4TtJmKCUuUaMz7xhEPxqcUxgEFxx0Kn63C+pzr6HB+QrM2Q9vVdDYYmdDmeRbs
         Ryk+yH26/IHpWPkMxxGNo6LVIzJRVpDKNhzcmGQtQJIMrwmz6ll7mzdQbzsIYSRONPnE
         Y0lQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro+1tWKQBdj93xdL0FolH7wYaPd1LVxYp7fjEJxvaIjoHlMoJHCYcE7SXkLpSbmawTW6dB3jVywG18+dMQt@lists.linaro.org
X-Gm-Message-State: AOJu0YyH+1hGWDGR2TRXO7AIu3EdKjKnC90paWUbhAc4v/e5RQni6QVm
	YkXZ75t43+vVYCulauLjjUHuC5wvPakK2k2hDKXev9W1AdzCeloFQIixMg6Ka214OA6pBrLsMTm
	tQT4udCcuRsyS2L7naTd6rWFJiIhuOJD9nGbv5FU8
X-Gm-Gg: AfdE7cna7Zxh9d3cGDrv0K5W2q6yjVTxZvWGtgmkP67Qv4cHboQJ+pHA5nfWnlFIpDv
	QfBbRWROtyahht3BSThcTFn3gHLn+z3a4EgvBKJmkLBAbEXRirV0bnXM4X7ccSZBeQRnLqokEUH
	3S1cqmFC6mVzd5wHOJj//1iT46NNag0SEDdp3GTVYX2SbzhY/2VXa/apglwiWvVBAdfaOXsQSLX
	IlPn/U8LPXdVBHOeQb/jKvEHXD+TLYMkioP6hOxHzoQI1SPOTHIU+YwkDNBR+WNL93zc+dT2+sJ
	MlwCT/4fvDzT3xTktgKakCVjwdBN
X-Received: by 2002:a05:6a21:3990:b0:3bf:a7d5:df38 with SMTP id
 adf61e73a8af0-3c11075f8f6mr4812182637.9.1783818093599; Sat, 11 Jul 2026
 18:01:33 -0700 (PDT)
Received: from 176938342045 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 11 Jul 2026 18:01:31 -0700
Received: from 176938342045 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 11 Jul 2026 18:01:31 -0700
From: Ackerley Tng <ackerleytng@google.com>
In-Reply-To: <20250602133009.GC233377@nvidia.com>
References: <20250529053513.1592088-1-yilun.xu@linux.intel.com>
 <20250529053513.1592088-11-yilun.xu@linux.intel.com> <20250602133009.GC233377@nvidia.com>
MIME-Version: 1.0
Date: Sat, 11 Jul 2026 18:01:31 -0700
X-Gm-Features: AVVi8Cd0bGOMjMsYrL4vU20fXx-xb2mKPsbs-m9K5p8jfizmd9no0laxFphKWjw
Message-ID: <CAEvNRgFpJWQ5M5sQhGpQUV3GbBq9N+MQhhaxdxa=D8ky94SCsw@mail.gmail.com>
To: Jason Gunthorpe <jgg@nvidia.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Spamd-Bar: -----
X-MailFrom: ackerleytng@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3KTH5QOHF6Q5MFHOOBWAM73QIIKG24I3
X-Message-ID-Hash: 3KTH5QOHF6Q5MFHOOBWAM73QIIKG24I3
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:21:05 +0000
CC: kvm@vger.kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, dan.j.williams@intel.com, aik@amd.com, linux-coco@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, vivek.kasireddy@intel.com, yilun.xu@intel.com, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, daniel.vetter@ffwll.ch, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com, linux-pci@vger.kernel.org, zhiw@nvidia.com, simona.vetter@ffwll.ch, shameerali.kolothum.thodi@huawei.com, aneesh.kumar@kernel.org, iommu@lists.linux.dev, kevin.tian@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 10/30] vfio/pci: Export vfio dma-buf specific info for importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3KTH5QOHF6Q5MFHOOBWAM73QIIKG24I3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	DATE_IN_PAST(1.00)[64];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	FORGED_RECIPIENTS(0.00)[m:jgg@nvidia.com,m:yilun.xu@linux.intel.com,m:kvm@vger.kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:pbonzini@redhat.com,m:seanjc@google.com,m:alex.williamson@redhat.com,m:dan.j.williams@intel.com,m:aik@amd.com,m:linux-coco@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:vivek.kasireddy@intel.com,m:yilun.xu@intel.com,m:linux-kernel@vger.kernel.org,m:lukas@wunner.de,m:yan.y.zhao@intel.com,m:daniel.vetter@ffwll.ch,m:leon@kernel.org,m:baolu.lu@linux.intel.com,m:zhenzhong.duan@intel.com,m:tao1.su@intel.com,m:linux-pci@vger.kernel.org,m:zhiw@nvidia.com,m:simona.vetter@ffwll.ch,m:shameerali.kolothum.thodi@huawei.com,m:aneesh.kumar@kernel.org,m:iommu@lists.linux.dev,m:kevin.tian@intel.com,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[ackerleytng@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ackerleytng@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,mail.gmail.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E20767576FC

Jason Gunthorpe <jgg@nvidia.com> writes:

> On Thu, May 29, 2025 at 01:34:53PM +0800, Xu Yilun wrote:
>> Export vfio dma-buf specific info by attaching vfio_dma_buf_data in
>> struct dma_buf::priv. Provide a helper vfio_dma_buf_get_data() for
>> importers to fetch these data. Exporters identify VFIO dma-buf by
>> successfully getting these data.
>>
>> VFIO dma-buf supports disabling host access to these exported MMIO
>> regions when the device is converted to private. Exporters like KVM
>> need to identify this type of dma-buf to decide if it is good to use.
>> KVM only allows host unaccessible MMIO regions been mapped in private
>> roots.
>>
>> Export struct kvm * handler attached to the vfio device. This
>> allows KVM to do another sanity check. MMIO should only be assigned to
>> a CoCo VM if its owner device is already assigned to the same VM.
>
> This doesn't seem right, it should be encapsulated into the standard
> DMABUF API in some way.
>

I'd like to propose an alternative. I've been working on guest_memfd and
new to the world of IO, please help me along! :)

It seems like using dmabufs are used a little awkwardly here. IIUC
dmabufs were originally meant to expose memory of one device to another
device, mostly meant to share memory. Dmabufs do expose MMIO too, for
device to device communications. Without virtualization, userspace MMIO
would be done by mmap()-ing a VFIO fd and having the userspace program
write to the userspace addresses.

Before CoCo, device passthrough (MMIO) is mostly handled by mmap()-ing a
VFIO fd and setting up the userspace address in a KVM memslot for the
guest.

With CoCo, is the problem we're solving that we want KVM to know what
pfns to set up in stage 2 page tables, but not via userspace addresses?

guest_memfd already does that for regular host memory, tracks the
private/shared-ness of the memory, tracks which struct kvm the memory
belongs to.

guest_memfd functions as KVM's bridge to host memory. KVM already can
ask guest_memfd for the pfn to map into stage 2 page tables, and already
asks guest_memfd for the shared/private state of the memory. guest_memfd
already also blocks the host from faulting guest private memory
(mmap()-ing is always allowed).


Instead of using dmabuf as the intermediary between the MMIO PFNs and
KVM, why not use guest_memfd?

What if we make guest_memfd accept a VFIO fd, or a dmabuf fd?

guest_memfd can then take the mmap() calls from userspace and .fault()
from mm, and then forward them to VFIO or dmabuf. This way, VFIO/dmabuf
can stick to their original functions, and the changes to VFIO/dmabuf
would probably revolve around disabling access.

Disabling access would probably involve some of these:

+ When guest_memfd receives the fd, it could return error for existing
  mappings, or perhaps it could just force-unmap.
+ 1 extra flag or field to indicate that guest_memfd is controlling this
  file, so that if userspace tries to take some actions with the
  original VFIO or dmabuf fd, the request should be blocked.
+ Perhaps just close the original fd, like dup2(oldfd, newfd) closes
  newfd?


I'm about to restart work on guest_memfd HugeTLB and I'm thinking about
a similar approach for guest_memfd HugeTLB, where perhaps the interface
could be that userspace will give guest_memfd a HugeTLB fd at creation
time, and then the original HugeTLB fd would be rendered unusable in the
same way as above, perhaps like with the S_IMMUTABLE inode flag, but
also blocking reads, and not userspace-modifiable.


In the course of a CoCo guest's operation, will the guest need to
convert between private/shared MMIO? Will the guest need some pages
shared and others private? If these are required operations, guest_memfd
already provides the tracking and is going to have a conversion ioctl
very soon. Instead of further extending dmabuf to track more things, how
about letting guest_memfd track it?
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
