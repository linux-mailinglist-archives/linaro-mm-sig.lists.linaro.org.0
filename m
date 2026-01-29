Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJEJJbR1e2mMEgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jan 2026 15:59:00 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 24669B13BB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jan 2026 15:59:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8B55401C1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jan 2026 14:58:58 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by lists.linaro.org (Postfix) with ESMTPS id 3CC0D3F721
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jan 2026 14:58:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=dgWzBuag;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.180 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-8c6aaf3cd62so113616085a.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jan 2026 06:58:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769698733; x=1770303533; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=o4w2e3JsR9J6c+UOY9xxx12hv3SNlcI3MEz/ixg8Unk=;
        b=dgWzBuagpk6FmxRJqIcRUIcn+opKjhDxSrUO0UGvcDn6z0dlgB5Hq1LDdI5YZcXMK+
         1rd3l3BnySlsm7P+tYf5ihOmHYjAEMoYwXOT9jGVbSozwoRD7YNdaheZsIuDrEM2YvVg
         kTYlC8u1bFp2WLrbwHZInHjaflax8HXwlMV1jZvfVFFBx3Vh6/VGeJqyDE0Vo4XiaM1p
         Bl5FXHrUpHh4pftuwW2P+6BT+G23MvuXgW2JPyR7E7dE2us21GIzhQJXc7zTCtBxUs9K
         JuPWJE8Ygq3KGZ5LbuIqZWaZapY6bt+DMdaEB26kAbRF2PzIlXQnP9ZCNfzTD2+J2E+U
         Qjjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769698733; x=1770303533;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o4w2e3JsR9J6c+UOY9xxx12hv3SNlcI3MEz/ixg8Unk=;
        b=D95k+x11i+Rpyh2Vb/HE6IY+i5isKRFaTD0vE/Fz9YTbyYnd2Uv4xFK+0irRBzFr3R
         0gJBfc3G1CAQCaYRmhsHj0jRuZ7NIs0zIzii2nFlo77bv8Kgs58rSUaHziBLYPGVEJDD
         OpiycoksbwKqpTH4xghw6AjO/W+2nBHGamJsGKNEkbBLx+fQexjPO1TYAODvhKOm3fgF
         qZlf8MHQlMSeky3j7Q2IihFQlOGwASCCUVP7dNphNiprKQG/V6/NyGj+pU22JI0LFDCs
         UPXGA6c4790ow+dvAvgdPipIaqS0/+sWFqY7Km66ZOxPO5gPc/nhYdfg+ZS5VXokoPXN
         gXaA==
X-Forwarded-Encrypted: i=1; AJvYcCX5w2JrlHU/3nrhhqHwfuLx6RUpny5ml1DzAogBtiTGY5dkUDOpTh6ZDUBmPj7t7n/y/tZfrA8j+N7SGHXe@lists.linaro.org
X-Gm-Message-State: AOJu0YzLii1ZYzIJoLdaMe1VuF6xwKs2RX3egchM8SFcE5gZHBFZDwcF
	mhAipwHGkkOg2yPw9oT0rfP9tSF5ghfOczA4rcDTN+jgue16gz7emUTxT/vBZ50de+8=
X-Gm-Gg: AZuq6aLiIYLnzSRGF8lvnUpcIXetCmEdyyHGnHj9cZINcQkIEU9j24VqMT2BWVnk86Z
	TKUZnNJ7Ur4fUJfEpZKtf+0SrwFtJhPfV7zGqjUciM9DezgfWMGVI/47Yb/HToVsPl94PexqyWe
	tipBroZR5d4ehv+AfayD4TyKoRO75X8E9ilW5I0NISiR3hZ/gyHJOog5UrpBp8UY2l6T1GHmYLZ
	NUZSDw2XJkgcyC4SMiDBnCHvz6jF4tylZ701ug3V2lPXaPAGCzpNgJrS2Xkqs7abyfDXx2KiTjy
	URcga6NgEBFr0FhZMqI4KJq65vlKAMd2T7TFZtPikQSh0N/0kIPWaP3I5+0khMUnd9BoImrwGyX
	QDRPjpdvrmrzJ5T/D0N83VtzlKg8VR6td8XYmCn25RwGedFVnEGVTOaahqgg3VsyvVhde/hHh1s
	AUD9wV+zla3ak+Ud2zvLRtRWs+HnKzLMXFsTJ7h7anLR+55w4pSKM7nneFAMhI97gZ6lA=
X-Received: by 2002:a05:620a:2550:b0:8c6:d398:4a76 with SMTP id af79cd13be357-8c70b833da6mr1225384185a.2.1769698732651;
        Thu, 29 Jan 2026 06:58:52 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-894d375c0d8sm38242676d6.43.2026.01.29.06.58.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 06:58:52 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vlTTv-00000009kfJ-363L;
	Thu, 29 Jan 2026 10:58:51 -0400
Date: Thu, 29 Jan 2026 10:58:51 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20260129145851.GE2307128@ziepe.ca>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
 <aXfUZcSEr9N18o6w@google.com>
 <20260127085835.GQ13967@unreal>
 <20260127162754.GH1641016@ziepe.ca>
 <BN9PR11MB5276B99D4E8C6496B0C447888C9EA@BN9PR11MB5276.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN9PR11MB5276B99D4E8C6496B0C447888C9EA@BN9PR11MB5276.namprd11.prod.outlook.com>
X-Spamd-Bar: ---
Message-ID-Hash: ADIDJOWXNMNRPU5BJUVYMUJG2GRJVIAU
X-Message-ID-Hash: ADIDJOWXNMNRPU5BJUVYMUJG2GRJVIAU
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Pranjal Shrivastava <praan@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-media@vger.kernel.org" <linu
 x-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>, "virtualization@lists.linux.dev" <virtualization@lists.linux.dev>, "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ADIDJOWXNMNRPU5BJUVYMUJG2GRJVIAU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.915];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ziepe.ca:mid]
X-Rspamd-Queue-Id: 24669B13BB
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 07:06:37AM +0000, Tian, Kevin wrote:
> Bear me if it's an ignorant question.
> 
> The commit msg of patch6 says that VFIO doesn't tolerate unbounded
> wait, which is the reason behind the 2nd timeout wait here.

As far as I understand dmabuf design a fence wait should complete
eventually under kernel control, because these sleeps are
sprinkled all around the kernel today.

I suspect that is not actually true for every HW, probably something
like "shader programs can run forever technically".

We can argue if those cases should not report revocable either, but at
least this will work "correctly" even if it takes a huge amount of
time.

I wouldn't mind seeing a shorter timeout and print on the fence too
just in case.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
