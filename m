Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z7uNLD5OLGqGPAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 20:21:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9AF67BA2C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 20:21:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b="wUf2j1/T";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34AAC40A6A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 18:21:49 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by lists.linaro.org (Postfix) with ESMTPS id CEE8D3F8E8
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 18:21:35 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2bf2911f93cso7555ad.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 11:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781288495; x=1781893295; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=e+Upf3vkFcOgQTn7qEBZF1fjinQnmqMOEEdN6sxgH4g=;
        b=wUf2j1/Tyly/ExutpnyieLDzWGMKCtLze3Pkihnhgu6/Z99s+fwDceB9IBJ81Osoa4
         JmYJglYloweJz8rd1Mo3/BMZVZLx0AmXOv1rSitfrtHhs3DntmZTu7rlkGSArn5lFsBS
         PBO6/8m4K+2NT+osQkx+L74Bfno0LIgDLA7H6Z7UDe5/hgwPqhkFAp4VSRgHqPCrg+X9
         LUVmWozzImw9C9ic3Lcpr9Rv1RRkIiieOV2faJVrvlOCikWeS9PYQQRzXbbHVJDB0nd5
         Tj8uIt0Q7XAx7FRTAiIFqiuvFaMIxz8YMMcbyYYdwWgVAGei+B6fUUzZXa9usoqOrmbA
         FtKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781288495; x=1781893295;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e+Upf3vkFcOgQTn7qEBZF1fjinQnmqMOEEdN6sxgH4g=;
        b=iYS0sCuvv89PrYf0PftdT6r8L0lGs1EzyYouzwETNlA2jg7/M4IFb4UMDaVG12ElbK
         9xcGaoszSDrPY1S5HmMpnKJEQy10tA1xU4W3TsEA3A2nfM/MY3DkrTAPCl1J72nhevfX
         pUedJuEXR/Lmyw4ff3MRvie2kabzDfUJlKGiZipLS5cwCemhu8HA78XxIvPXrZjvzayE
         CAlDMa1fIpEbM+BaX27pYG+tKV+M5x08pmNo+hy8GIsz8XK74iLHPrmIqCLh7LyNTWJY
         sCpeeYDB5MQ6s62aoSGP499Nf1rDGHxjwtzByXs4WcSvA76BxLMeYueOaYogIb7SlE0d
         +emg==
X-Forwarded-Encrypted: i=1; AFNElJ8/z8/3A+3xxiBIy/3wHHaVBM4ZryrZ2QminSx4ZtyKbeIWQCtSOdlKz65+blnVVn3XhwnVLf4rNRSHsa3O@lists.linaro.org
X-Gm-Message-State: AOJu0YxGvGieGt0zsnDTQtdyD0W6OsA2ugNXscqr29flel8PYOrrN+TT
	iyStATwv/RTbaBfAMSwx1TQr4qmIooSiEYy6eVFe/CCpbf0jm2jyagQNie4pUcJZ6Q==
X-Gm-Gg: Acq92OG/tteE5KUNC1aohuDwOTjeDuM2kNRQQCmDrUsOyBKZum24s9dwpasMcEjIGX/
	7K/HbQHWN646Hqd1EQeYxTx1gYTjzVrS2rJVIlrd6/GGR2Qj/wQ2+JNKRmGwKY8bYMxfnvqR2zt
	wBdRiLYC8UOAqv7qV7nu9G9ZsuYTrd9wuGDycPH+XZkU06xEdtAq5fVa3kKdvE9U7gZwo4JzDg9
	1c9MALAf6VQW7mHvLDq1++vPsHq3k78+7mxuoKED+VnDq2mxBcLnGUTd0PAlTgrNwj5jiBcL8i3
	6l1djo7I92bcECImVCuG1vX/GgIDdRo6ImzDzHWAAbx9sHnRxbyuD/WgS7QPaFhTj1E2OgLvYk8
	YS/8izetZ4dq/VCZ6HB94V2cn1jSVjQ7b1x6yL/49NcE1BZEIz8PEUpQKHku1knOQ7r97iIze9y
	VXE+SjC9G2ffEj1dahLhpUxGXN7aw+Qc4SVDMPvUes+BFxugExCTUkzeTaKdAD
X-Received: by 2002:a17:902:e743:b0:2c1:ee6e:4e4d with SMTP id d9443c01a7336-2c665142269mr202305ad.30.1781288494306;
        Fri, 12 Jun 2026 11:21:34 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c8663352fd4sm2677095a12.12.2026.06.12.11.21.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 11:21:33 -0700 (PDT)
Date: Fri, 12 Jun 2026 18:21:26 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Alex Williamson <alex@shazbot.org>
Message-ID: <aixOJs4_HHFLgGLA@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-3-matt@ozlabs.org>
 <aisa6H-a-176MXhC@google.com>
 <20260612113735.79518b15@shazbot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612113735.79518b15@shazbot.org>
X-Spamd-Bar: ---
Message-ID-Hash: UZMDAXAYE73H23G3E6WN6ODEWRI7LTM2
X-Message-ID-Hash: UZMDAXAYE73H23G3E6WN6ODEWRI7LTM2
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Matt Evans <matt@ozlabs.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/9] vfio/pci: Add a helper to look up PFNs for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UZMDAXAYE73H23G3E6WN6ODEWRI7LTM2/>
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
	FORGED_SENDER(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:alex@shazbot.org,m:matt@ozlabs.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2F9AF67BA2C

On Fri, Jun 12, 2026 at 11:37:35AM -0600, Alex Williamson wrote:
> On Thu, 11 Jun 2026 20:30:32 +0000
> Pranjal Shrivastava <praan@google.com> wrote:
> 
> > On Wed, Jun 10, 2026 at 04:43:16PM +0100, Matt Evans wrote:
> > > +	/*
> > > +	 * If we get here, the address fell outside of the span
> > > +	 * represented by the (concatenated) ranges.  Setup of a  
> > 
> > Nit: double space before "Setup" and "But" below.
> 
> Some of us old school'ers consider this proper writing style ;)

Ohh okay, I wasn't aware, I withdraw that nit then :)
and come on, I don't think you're old school! :)

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
