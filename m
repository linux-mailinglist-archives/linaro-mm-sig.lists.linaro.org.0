Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ctl3I5SCKWpHYQMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 17:28:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC3C66AC89
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 17:28:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=pzZO60eq;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CE0440A49
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 15:28:19 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by lists.linaro.org (Postfix) with ESMTPS id 1AF3F40499
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 15:28:07 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2bf22c18ad3so104185ad.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 08:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781105286; x=1781710086; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rRGcDEeCGM58JoYwcY0kneIT0WSa4bKVwTj3Opbvtug=;
        b=pzZO60eqF2U64z72dPqcOiX/TLNxsuXvgBpz5amGRE8xsYHdb+UiTklyh8ZGfocP6X
         91SozSNe/VbC0BqDdHd9d4J+gsu7jtS4q4W0SoQTBzjFO9CZV8tT4UHf/Vcw7N3XNCb6
         G/nl+gqWp4litAMdIpNMEyLDa8F5AlGxj9O3Ks14xSQTVkcSvXqxH4sujR/9wMvSQjm+
         oDTlETBZmnu81WEhAHG/TNmnvmJBWFAtcrBI+7sX0/VGc8COne7UZ47jldr7Ojy74Wvk
         JE4akdJb65wkuVZWjAAjjmfLpODQANvGcnCOm1CaIAlNPeLJB6f4/+KsutMWHEhuyhQd
         r9Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781105286; x=1781710086;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rRGcDEeCGM58JoYwcY0kneIT0WSa4bKVwTj3Opbvtug=;
        b=PppK+mwVG74nH81PJF47ConFYoflF06DnIetkZ9TQyRDSpSh/VTcNcf3JZOTHlgMtX
         Wj4jG4h8fuOdrBvJR91tXWpDMgL1emQbcWGy5OUsitdu6MsYGjuvOaakELihf7ye6OOs
         OtGGnVsgd+wRlP8j57Bm7aroPaRKdkCu2GdkDy85S0EdWQj+SMg/7sF8LqylnlGW+m++
         JOTkG2WPss/99YvXCXxi3ChZqXXWiE1TgB+ROjfLtMmTCXqE3NKZK0kzOD6Dzu7m/oJM
         KhVKt/bVyzuofUvVE/qs+pVrnyuS0LQ2qFi1VFlklyGVEI0Qyy7HoE5Sz56XjAkZIuvN
         jhfA==
X-Forwarded-Encrypted: i=1; AFNElJ9K4dJ5u1sV9ybkcgzVGQL/JC/zVBWjv5jjOl3vclpUIncE/PGd/+U5MQfwdGI9BqRpB+rTsSYTcMZ97p1f@lists.linaro.org
X-Gm-Message-State: AOJu0YwdLREPzN3PCbDIR4SdPDol/h3UlLTd/L/gMqueGhNVVXlTiGdj
	7U1Wo9VKo8gPQdzBjnU67UNlyGWKYTuHIwPjG6bdnfjbX0PkqlR8pCxZqSPJdHqlHg==
X-Gm-Gg: Acq92OGzeGKNbpoCyVQ8jqxz9561esfwHky3ubfLUhpu2hBAHEsyURjltc2kyFQKDQ1
	3FQSnkfwHHKF03Oct1/JENyw3i1+bHr1VFC0ijdA029sqetMwsBucjp6UeahEEhTq0C+wUldjEk
	muFxUMOSwjdrJv1a3oQ8PLH9kENqzeUX3LozGRDq0yRfHoOO028ml5xE4haqmrj15lSIvyEfFeR
	eYDPsM1xzGcgz0UDa0gY0yTb1mROGlBv15xU9Rzsj2mUyc74sW/DOkErYEpzOYR7EJiMn9W0ogH
	VX9UEVpkKjbwVDKTxCuPUbdHg9+QdWlsECVDT8nttIpMBP+qEbopHXBzfcQjOgumkx/cBsCTQx8
	eKvLAhGp143Fwlo3s0STHdd3g1N3igrtNz2RV0Ar+NJDvgYfTrW5eiJASvReLdoa3CP2p3YXizD
	7mN0b4WrFso8pJ8ms4cRrziyzKsmgrEqKWyDhG0wvB11dy2GfCgaA/EmujnHCuf/8CcqmVk0E=
X-Received: by 2002:a17:903:1ad0:b0:2b0:b925:da98 with SMTP id d9443c01a7336-2c2d941bcf3mr118265ad.19.1781105285671;
        Wed, 10 Jun 2026 08:28:05 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164fa00b3sm237800395ad.32.2026.06.10.08.28.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 08:28:05 -0700 (PDT)
Date: Wed, 10 Jun 2026 15:27:57 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <aimCfaCM-m4TS2g9@google.com>
References: <20260527102319.100128-1-mattev@meta.com>
 <20260527102319.100128-2-mattev@meta.com>
 <20260527150946.312b3042@nvidia.com>
 <20260529230553.GE3195266@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260529230553.GE3195266@nvidia.com>
X-Spamd-Bar: ---
Message-ID-Hash: MNEU4KFHE4LXSIIXLZI6QHKPC6S5J6W2
X-Message-ID-Hash: MNEU4KFHE4LXSIIXLZI6QHKPC6S5J6W2
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex.williamson@nvidia.com>, Matt Evans <mattev@meta.com>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/9] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MNEU4KFHE4LXSIIXLZI6QHKPC6S5J6W2/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jgg@nvidia.com,m:alex.williamson@nvidia.com,m:mattev@meta.com,m:leon@kernel.org,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1DC3C66AC89

On Fri, May 29, 2026 at 08:05:53PM -0300, Jason Gunthorpe wrote:
> On Wed, May 27, 2026 at 03:09:46PM -0600, Alex Williamson wrote:
> > This deserves a /* CONFIG_PCI_P2PDMA */ reference like the previous
> > long span, though potentially a better solution would be to split the
> > core code out to a separate file with shared header.  I asked opus to
> > see what this would look like and it generated the patch below
> > (unverified, compile tested only).  Bigger diff, harder to follow
> > blame, but the shape of the core is much more apparent.  You're welcome
> > to take or leave it.
> 
> I think it is a good idea, it will make it easier to add more stuff to
> these different aspects.
> 
> Really they are now two different things with one layered on top of
> the other.
> 

A little late to this party. I agree with this split per status quo.
Although, one observation from me, I've posted a concurrent RFC [1] that
implements ZONE_DEVICE P2P registration for VFIO. That work relies on
pci_p2pdma_add_resource(), which requires ZONE_DEVICE and the full
CONFIG_PCI_P2PDMA stack rather than just the CORE part.

I guess I can be careful to guard the ZONE_DEVICE P2P registration 
feature in VFIO with the full PCI_P2PDMA config. Apart from that, this
split provides a clean foundation for both series to coexist.

Thanks,
Praan

[1] https://lore.kernel.org/all/20260610151853.3608948-1-praan@google.com/
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
