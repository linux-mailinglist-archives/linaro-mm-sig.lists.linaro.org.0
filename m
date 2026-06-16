Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3r7rBVqbMWpZoAUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 20:52:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B895694885
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 20:52:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b="so/LqTPR";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 585B740A7D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 18:52:08 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	by lists.linaro.org (Postfix) with ESMTPS id AA32540A7A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 18:51:58 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2c6a4eccab1so8815ad.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 11:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781635918; x=1782240718; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wvE0aCg+gv1l26GtSCjQQyNi/5Rf7OW5qgPEji4d+Bg=;
        b=so/LqTPRvig7PgZaAQuwTq1ejm2ilhTgKSZKGkeddiTd+fYJPjo0C8TK06MZAaXhE4
         iL1629xSj0hNQCFlHHzGCpNdjX2eqfEORZhGHUkzAfS+xgGvo1u49slssgFLWq8Gb7rX
         8Ufww+1qn7jBNeknyx/mE/rNeMKRl6JDG4nQBjVzZS1oRlQuXH+KHuDlQgvy8nqE9g1f
         566JfgGvvYlNRNltwbjnvLl4bYwrmP0mEHUCwFlDQZCGpFuNSyAL8tnxy08qlb0mSi7+
         wMqIEW8/F4td+iUXBpgNHX+UQxB7KvdQZJ8olHsyE2ZcVBdRzpa934gFMnOO21Wx9dDB
         hBtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781635918; x=1782240718;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wvE0aCg+gv1l26GtSCjQQyNi/5Rf7OW5qgPEji4d+Bg=;
        b=HQnDYhNQHUsysXnw4Q68HP+K12akfgfoq6jPt1AY5gKY7U1HvgkSIzynvM5VistnXe
         7ETaZ6OQk3EG04ARgrcviOrmE2q8HuKqWKcym5ck5RQiuPN15Q5vGPg/iRZwYeMi/xEM
         muAViL33qZvuEzjjUctpux8oYLO3mpO4z++EuKEoNraF37mVUUQ+9c4LxT3pC4lzqUP+
         voicoqK46CAj8nKkZ4PGrInD8PFCmawVSBCN+FJl8z5MvGOQTAYwPA9EDQGeEpCTRy2v
         PT9q/BU/Y7DP0e0cUWWOkTWtaunscAfRVBTpJUnEDdTJEA0Bgs+/ObDCRfbahuy/gxRy
         PRCQ==
X-Forwarded-Encrypted: i=1; AFNElJ9duXqL2FzgIs4182MCON8RIaIe5K3JRaBSZ+g/BGW6JOI+j7SiyKoak+YK+gmt7qEu2cfk2wt3nVsmHNnk@lists.linaro.org
X-Gm-Message-State: AOJu0YzwX5s86qwvkUkTUykfnr15vMYwB7OV6U2JhwSiPLBW9Ow+G9Iz
	NplFQ0mTqzGVjP3mtHx1G+gbC2j/+gwkzEV62HUik+Sg3K+uDHVXrxrfTdoIRd0lzg==
X-Gm-Gg: AfdE7cn29/fNJCCeQ2OSZjtLyeUOQURFqEZljgvGEZanF8S44DKov9ENakr2AJVmW5D
	+CpV4z5RJ323ook5P1Tmp0R5q+Cx9WXpaLxJsoUfnWRadWl3CLNlQx9H2whSqBazUD+2mal0aPO
	4WcjxcB8J8Ejpw5OEidCMXnT5Esj5toJSap/8pcJVcqcrCIrrk59CiKLi+tLCkNslIMRK3+uTtM
	Pok9HH/nDj4bcG3es82JeKlpdZxXE3biiRDsUuDENfMwr+M3kJ2AvgREVoAOlHBuyV4EHD2fBnp
	2wcN9tkrkICNwrlCpmVqhBt/TuYVCfvkj+sgsGB3R3IWxGna8j24oMn7/hzA6KzUpaAGvZijaaj
	8EQhp5XxNFRuynZD3bTpBuAwwsh9XmDYWIebCBnGDVK1P7xwVM4BkozCl6L9Zz5Oujtab2pRHx+
	dDh7XLl6F9kjJKiCi1pkirejjsq7AXQpPoJRuhBMlCu7RW/LrNWCtL+ioiz4qC
X-Received: by 2002:a17:903:2f84:b0:2b0:b925:da98 with SMTP id d9443c01a7336-2c6bbc5d4eemr256505ad.19.1781635917134;
        Tue, 16 Jun 2026 11:51:57 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8434ad03fdcsm13472996b3a.24.2026.06.16.11.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 11:51:56 -0700 (PDT)
Date: Tue, 16 Jun 2026 18:51:48 +0000
From: Pranjal Shrivastava <praan@google.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <ajGbRE3WWJxNxcrg@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-7-matt@ozlabs.org>
 <aixgZQiBQKgS7yIM@google.com>
 <DM6PR11MB3690489DB5FA611413BF60558CE52@DM6PR11MB3690.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB3690489DB5FA611413BF60558CE52@DM6PR11MB3690.namprd11.prod.outlook.com>
X-Spamd-Bar: ----
Message-ID-Hash: NUDD5NX7EQPAVLSQ2SSTIWPQFHB65MPG
X-Message-ID-Hash: NUDD5NX7EQPAVLSQ2SSTIWPQFHB65MPG
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Matt Evans <matt@ozlabs.org>, Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/9] vfio/pci: Clean up BAR zap and revocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NUDD5NX7EQPAVLSQ2SSTIWPQFHB65MPG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kevin.tian@intel.com,m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[google.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B895694885

On Tue, Jun 16, 2026 at 09:48:14AM +0000, Tian, Kevin wrote:
> > From: Pranjal Shrivastava <praan@google.com>
> > Sent: Saturday, June 13, 2026 3:39 AM
> > 
> > On Wed, Jun 10, 2026 at 04:43:20PM +0100, Matt Evans wrote:
> > > @@ -1264,7 +1265,7 @@ static int vfio_pci_ioctl_reset(struct
> > vfio_pci_core_device *vdev,
> > >  	if (!vdev->reset_works)
> > >  		return -EINVAL;
> > >
> > > -	vfio_pci_zap_and_down_write_memory_lock(vdev);
> > > +	down_write(&vdev->memory_lock);
> > >
> > >  	/*
> > >  	 * This function can be invoked while the power state is non-D0. If
> > > @@ -1277,10 +1278,11 @@ static int vfio_pci_ioctl_reset(struct
> > vfio_pci_core_device *vdev,
> > >  	 */
> > >  	vfio_pci_set_power_state(vdev, PCI_D0);
> > >
> > > -	vfio_pci_dma_buf_move(vdev, true);
> > > +	vfio_pci_zap_revoke_bars(vdev);
> > 
> > I'm wondering if this change in behavior is correct?
> > BEFORE this patch the sequence was:
> > 
> > 1. zap vma mappings
> > 2. Enter D0
> > 
> > After this patch the sequence becomes
> > 
> > 1. Take the lock
> > 2. Enter D0
> > 3. zap vma mappings
> > 
> > My worry is if user-space accesses a BAR *during* the transition to D0,
> > it could crash since the mappings still exist during the transition?
> 
> not 'crash' as you also noted later with all Fs on read and dropped writes.

Ack, "crash" is definitely a strong word, I just meant that the
user-space program isn't expecting to see all Fs today. Since today any
access during reset is faulted, however with this all apps may have to
lookout for all Fs during a read. Could this change cause existing apps
to crash?

> 
> > 
> > The old code is immune to it because it removed user-mappings first.
> > 
> > Following the discussion from v1 regarding the ordering of
> > vfio_pci_dma_buf_move() and the D0 transition.. while it makes sense to
> > perform the DMABUF revocation/move after the hardware is in D0.. I'm not
> > too confident about moving zap after D0 :/
> 
> probably add a comment to remind that ordering requirement for dma
> 

+1. That'd be helpful.

> > 
> > I mean, sure, the user would just see all Fs on a read and writes will
> > be dropped silently until we are in D0.. but the behaviour before this
> > change was that the user access will fault and hang on the memory_lock
> > instead which ensures that the user observes a consistent dev state..
> > 
> 
> I see this more consistent from another angle.
> 
> Old code only removes/blocks cpu access but not for device. DMAs
> are allowed to this device while it's transitioning between D0/D3.
> 
> New code at least make this part consistent - both cpu/p2p are allowed
> in the transition window.
> 
> Ideally a sane userspace shouldn't rely on the content read back when
> it has initiated a reset in parallel. So this behavior change sounds ok?

I agree on the CPU / P2P consistency part. However, my concern is for a
shared reset scenario where a reset triggered by one process (I guess it
was vfio_assign_device_set?) can affect multiple devices in a dev_set
that are owned by different, unrelated processes. 

In the old code, these peer processes are protected because their BAR
mappings are zapped immediately. Their MMIO threads simply stall in
a page fault until the reset is complete.

I agree for a single-reset scenario, sane user-space should never access
regions during a self-triggered reset.

Am I missing something?

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
