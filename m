Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xcLrEJ59Omq7+AcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 14:35:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B20826B71E4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 14:35:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=otbJHgGn;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B93A140A39
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 12:35:40 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by lists.linaro.org (Postfix) with ESMTPS id 3455E3F949
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 12:35:30 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2c6a4eccab1so40595ad.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 05:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1782218129; x=1782822929; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=zrUGuQC1RmyduYSJ3/JT9tG3Cdq2ls0SnT0GavGxSKw=;
        b=otbJHgGn8uRVE3oA2fMZU276shumQH9FqVOdyGkuAHYjPQuYBCZb1wItHcoXVrL6bF
         8Vgo+dJPENu6KlyGOCWlTeFrKIQdnU4BkcuCM0jImxLCXd88mPhPEDPMUb7AM6xuQIg9
         DjgdT7tJyMJv2pdPubUwgvT96YLg6OtPPm0yeNkESWdg4OYnniCNXUA7i9iSUoFO4Jhq
         HgJUW2aF90oo0TMdrvFTdEv/WXqTla4eYiC4S/ztJoDLN6sAcgxU2R9S+DjrROaYpzUo
         /ttYtt/ZHMaf37MQXtE7NgrdUnZZ8SCOChwc7ZRIgt1tyWSfv9NJ8cbYj4EB714GGWwt
         nNHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782218129; x=1782822929;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zrUGuQC1RmyduYSJ3/JT9tG3Cdq2ls0SnT0GavGxSKw=;
        b=IPjqawB0wCnaA4XhHkYVVaYZAX2mM4irJKpnO9hVsbv88K8q5DzD5jgAGAVlCvI4uc
         CI3kgiHlTNCxNPM7GRAfEGisuNFPlqGHn5OE2I0dMEWHIR++8iaakFv4pZNwRCJJoHGn
         aHRiuWcWXpNjCpi6oMMbOGNQjzlSR+lrZG+tZoJIASGrrPYEpqOzzlfgDMaU1QY+qSpM
         Bmsp8ORGp1+rOnIutMA/6C9ScOfUdbo3fagst1EL86GfjP5C/pW8TV3nhAQSSEi7lRTF
         wXAPxarIfrT+QEjI06WiJbN8YhKNbTJqySFgSKHDckvTkgO9q+mLYJpoQt0MI3gRI30y
         1XiA==
X-Forwarded-Encrypted: i=1; AHgh+Rrl0LlnTThFh2Wcjgd2HC6gItkdJawKGN07C+0FWUTynFGAHYumr2n58UbGgVgzj0gREP+BIrbnnR9TccYF@lists.linaro.org
X-Gm-Message-State: AOJu0Yw2DNFEhbF6a0Lvnqyk++96BdiKlmhUnD5ruJabzyr8D9COPzEN
	uZpa0MG0PFxJ92gdABY8vq1PHM6V7Fz3M8VjSAxGpZuddoJiOk0CTnHN8IWw5althg==
X-Gm-Gg: AfdE7ckECeCyfpAjgp7JMLR/dNFKrU5PA8/UiaLhFly4tvV9USdan2rssr73gL9n8s7
	N05AduI+hr1F/5xHyNfOXTCmG0jNuNs3yjpC2+lgiwy9F8OT2TxeImDrvL6DBq6C+4auPh6/1cd
	r36ElHCkPUUGTIv8gMhs4PAAAst/o5Ng8eTHGVCENiYGFdE6KQD/EkRhGk/AVQ50x74w418d5Jg
	d8YTAdqM55GD8DPX69tXS58xUy9GHNiUfFA7LTAE/mKNrZsFxobZNHOTbnE9CV48+7oiAb+Fs13
	p+sW5irKlJCja/8G78/bX8hEE6qBdnHJEWVMbHSqXkm73g1Dp1+aKr3UgNJ+gwbDiHttWImSU50
	YMwV6J8ejB5UX1mAVuYxTaqsS69p1uo7fQBPIw10Xe7i90BztJAsYouzaSbzB9Sc2ISMkbK1Et9
	FqVOiUc40PWGmQvkToZE0PCtP/g+Vy2gfTn4EWGbTHASsGLQH/wA==
X-Received: by 2002:a17:903:2c06:b0:2b2:70ba:305c with SMTP id d9443c01a7336-2c7c5030b6emr2113265ad.8.1782218128496;
        Tue, 23 Jun 2026 05:35:28 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c7444aad83sm105841775ad.79.2026.06.23.05.35.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 05:35:27 -0700 (PDT)
Date: Tue, 23 Jun 2026 12:35:19 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <ajp9hwIw657qxji5@google.com>
References: <20260610154327.37758-7-matt@ozlabs.org>
 <aixgZQiBQKgS7yIM@google.com>
 <DM6PR11MB3690489DB5FA611413BF60558CE52@DM6PR11MB3690.namprd11.prod.outlook.com>
 <ajGbRE3WWJxNxcrg@google.com>
 <BYAPR11MB3687AE280241C9E00B46FCF98CE42@BYAPR11MB3687.namprd11.prod.outlook.com>
 <24f34e59-7c3b-4b56-83bf-cb07e3f369a6@ozlabs.org>
 <20260619133116.GB278945@nvidia.com>
 <55ea7422-08d8-4c92-aa59-8ff6f9e9d781@ozlabs.org>
 <20260622171336.7d13f548@shazbot.org>
 <fbb2b1a6-594f-48eb-887f-7cf0cdd4c336@ozlabs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fbb2b1a6-594f-48eb-887f-7cf0cdd4c336@ozlabs.org>
X-Spamd-Bar: ---
Message-ID-Hash: U4EZLSHI7DTL7ZXI4B37KY2IWJWGDA37
X-Message-ID-Hash: U4EZLSHI7DTL7ZXI4B37KY2IWJWGDA37
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Jason Gunthorpe <jgg@nvidia.com>, "Tian, Kevin" <kevin.tian@intel.com>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/9] vfio/pci: Clean up BAR zap and revocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U4EZLSHI7DTL7ZXI4B37KY2IWJWGDA37/>
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
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:alex@shazbot.org,m:jgg@nvidia.com,m:kevin.tian@intel.com,m:leon@kernel.org,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:email,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B20826B71E4

On Tue, Jun 23, 2026 at 12:08:30PM +0100, Matt Evans wrote:
> Hi Alex,
> 
> On 23/06/2026 00:13, Alex Williamson wrote:
> > On Fri, 19 Jun 2026 16:13:17 +0100
> > Matt Evans <matt@ozlabs.org> wrote:
> > 
> >> Hi Jason,
> >>
> >> On 19/06/2026 14:31, Jason Gunthorpe wrote:
> >>> On Thu, Jun 18, 2026 at 05:02:58PM +0100, Matt Evans wrote:
> >>>   
> >>>> My understanding is that the sequences above wake a device that happens
> >>>> to have previously been put into D3, and AFAICT it could only have got
> >>>> there because of a previous vfio_pci_set_power_state().  Seems its only
> >>>> caller is from the emulation of PCI_PM_CTRL using
> >>>> vfio_lock_and_set_power_state(), and this zaps/revokes BAR access before
> >>>> a transition to D3.  Similarly, an attempt to access a BAR via an
> >>>> ioctl/through vfio_pci_core_do_io_rw() fails the D3 check in
> >>>> __vfio_pci_memory_enabled(), and besides will try to take the memory_lock.  
> >>>
> >>> I thought the general design was the bars were made inaccessible
> >>> before going to a low power state, and remain inaccessible while it is
> >>> in low power?
> >>>
> >>> So the order of D0 doesn't matter. If it is not in D0 then there is no
> >>> mappings and zap/revoke is a NOP.
> >>>
> >>> If is it in D0 then it doesn't matter because D0 is a nop.  
> >> Yes, that's what I'm getting at. :)  If it's in D3 then BARs are
> >> inaccessible, so as long as we go into D0 before the DMABUF move, the
> >> order of the zap relative to the "go to D0" doesn't matter.
> > 
> > I believe this is correct as well, but importantly we cannot assume
> > that a stray read or write just returns -1 or gets dropped.  This is
> > exactly why we have such hard protections against the user accessing
> > the device while it's disabled.  Not all platforms, even within
> > architectures that might otherwise be considered lenient of such
> > accesses, consider this benign and might escalate to system level
> > faults.
> 
> We are in enthusiastic agreement here.
> 
> > Let's be careful not to frame this as "the access doesn't matter
> > anyway", the answer is instead that non-D0 devices already lack any
> > mappings to access the device.  Thanks,
> 
> I agree that is not the right thing to say, for exactly that reason.
> (For avoidance of any doubt, I didn't say that :) )
> 
> Thanks for confirming the behaviour.  I hope Praan and Kevin are
> satisfied that this patch doesn't cause the issues they first worried
> about (the changed order of the zap relative to the D0 transition
> doesn't have a detrimental effect because of the existing inaccessibility).
> 
> Alex, I'll post v4 soon, but if you have any comments in the pipeline
> please shout and I'll hold off awhile.

I think the discussion addresses my concerns. I'm in agreement as well.

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
