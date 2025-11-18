Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA44C6A2A9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Nov 2025 15:59:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33B9F3F90E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Nov 2025 14:59:54 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by lists.linaro.org (Postfix) with ESMTPS id CCB6A3F777
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 14:59:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=R61IMAu5;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.176 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-4edb7c8232aso80251811cf.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 06:59:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1763477977; x=1764082777; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6zUAnqwUQ7mMEKfAAq0Pm8CCEggD/qceLgK2oNv/WhY=;
        b=R61IMAu5rP2dsM8WtFuAtQfni9i9bWG+nm5gT6rHt9SpSF+CP1/O34t3AKZBw9UjDJ
         p6ErdGLWKEK7Q0DqtUmMt7HUBeWrMneTKw3GA+a1rxIwTTwuReWOFLYZPAxEUvrJLFje
         JyYAuhTcWzFdrdgV98LckmpUF0SBzu0wHoSp08eVE4vvfg/DTYjyOys+gXdPysYlZ5kN
         VXyal3z8l9bb0HefZXbYwFw2mqI94Q2M+YYHJ36EV72EaBTRAXoa6Qz1YK0NoL3wQbID
         WoLfmxiQvfW+GqejI11Eql8bobdFfOJmtgkKkHCI7AndfDzq4dCmlng2ALseeOdCMxJz
         FufA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763477977; x=1764082777;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6zUAnqwUQ7mMEKfAAq0Pm8CCEggD/qceLgK2oNv/WhY=;
        b=oJ1in9YM9VkrNMu/7ZfdZjDVYlFvOGqH4dZJI4LKyr1chbQZ04chVeiv4sjMgThbvM
         qby4Pt4j2Sn9DuLea3LZ2pGFIrMB2fKGt6KIurMssisZsUBEBe86OIzJ6NWqAuRom4N+
         gUZauSFOmVYSkDIbgw/l/CcNwlYiNGuGRDK55jLgQiC/cvMX8e8rgYUuAemxZQswhEow
         RrO3hvgZgw9D0tumtltvtwxz+xXGtG2sASoTI8m+O98Xj6vxj0KPgAxxIgjb4DhsvYjM
         U8EhHW4xk2owYnMwMp9Lzy1+okbXtLJgl/m/K3JKBngLEBQLFeFxvvNt9d62ekUSqsBQ
         Pk7A==
X-Forwarded-Encrypted: i=1; AJvYcCVuw6MVTt0gYtJZcO0pMEEvDj/8KCrld7F9yd28fFTs/j8b/fexJa6pf/v7SacGsAZ4/DMr/twRxS69Jsjf@lists.linaro.org
X-Gm-Message-State: AOJu0YzH5pC4g25Ebbicmy9z/1DHggBJ6fkMSNFTaopmca6wFWzX6Pga
	b0IpNy1khQT+jBaVTYPZtMNtg+o9CKSSVKAnMOqwBOIJEmqiGcve91Tai4VDmLSmVso=
X-Gm-Gg: ASbGncvWWz6tTq1GGjAA5ERRDg5MoJ5FN6BgkSnSP7Lq6Kr0+3cXFD/Vjx62xmGHlqR
	R2dt1vcdeCNM96r8WzPv+Hw5RpkCxr8QY5xWODzwHb7IJMIDJAs8B+PBy1O+w8pL6xEjS4Inct8
	fV/ziuqNZExQb5zU/9nRaTA7uWv2omiWwmSyexQuMcB+vcZt1kEOvvLUt5TOT/3cIOnFoSfLPFQ
	DIo7n8isNjbmI/5sCRZH3ru3kZ+2+R+79fTkCE9D9J0kb1HeUHS9BQ9slkiAYBnXBn+AQL8rkwG
	Ewit101becX2JekM8c8sVSeIIt7+szPpZahsC3TyjjnE0bWmBlH/BnmI0cISC53ZTSmDt2HStYF
	fAjS5e+EoaWttuE7ZuqdjmX5PwmG7GKoi6LDhEulaQcBjQGq9T9qrUx0Keo0pq+iUoiZiF1rgt9
	PgQXDWZV69LsuWAn/O4tsCfbm1JcrtsJcjFAh/uBAUwnhff/85AMbfNT3TjiD9OPgORSc=
X-Google-Smtp-Source: AGHT+IFmOGfhY23WsMGsPUUjQKfSR05e4XRcukJGt61kp9ViFdOBWiVKVUUuzQ+TB82GrGuUAmTsrw==
X-Received: by 2002:a05:622a:1a08:b0:4ee:1563:2829 with SMTP id d75a77b69052e-4ee15632a6bmr144570871cf.72.1763477977218;
        Tue, 18 Nov 2025 06:59:37 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ee275abad5sm34184941cf.14.2025.11.18.06.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 06:59:36 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vLNB9-00000000NQI-239J;
	Tue, 18 Nov 2025 10:59:35 -0400
Date: Tue, 18 Nov 2025 10:59:35 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20251118145935.GI17968@ziepe.ca>
References: <20251106-dmabuf-vfio-v7-0-2503bf390699@nvidia.com>
 <20251110134218.5e399b0f.alex@shazbot.org>
 <da399efa-ad5b-4bdc-964d-b6cc4a4fc55d@amd.com>
 <20251117083620.4660081a.alex@shazbot.org>
 <20251117171619.GB17968@ziepe.ca>
 <3599880e-5b50-4bad-949b-0d3b1fb25f3f@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3599880e-5b50-4bad-949b-0d3b1fb25f3f@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.160.176:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	URIBL_BLOCKED(0.00)[ziepe.ca:dkim,ziepe.ca:mid,ziepe.ca:from_smtp,ziepe.ca:from_mime,mail-qt1-f176.google.com:rdns,mail-qt1-f176.google.com:helo];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CCB6A3F777
X-Spamd-Bar: ---
Message-ID-Hash: P5BEWZ6OAEJAI2A4WBOQAA5NXGYIJN4F
X-Message-ID-Hash: P5BEWZ6OAEJAI2A4WBOQAA5NXGYIJN4F
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex
  Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 00/11] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P5BEWZ6OAEJAI2A4WBOQAA5NXGYIJN4F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBOb3YgMTgsIDIwMjUgYXQgMDM6Mzc6NDFQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCg0KPiBTa2ltbWluZyBvdmVyIGl0IG15IG9ubHkgY29uY2VybiBpcyBwYXRjaCAj
NiB3aGljaCBhZGRzIHRoZSBoZWxwZXINCj4gdG8gdGhlIGNvbW1vbiBETUEtYnVmIGNvZGUgYW5k
IHRoYXQgaW4gdHVybiB3b3VsZCBuZWVkIGFuIGluLWRlZXANCj4gcmV2aWV3IHdoaWNoIEkgY3Vy
cmVudGx5IGRvbid0IGhhdmUgdGltZSBmb3IuDQoNCkkgdGhpbmsgeW91IHNob3VsZCB0cnVzdCBM
ZW9uIG9uIHRoZSBpbXBsZW1lbnRhdGlvbi4gSGUga25vd3Mgd2hhdCBoZQ0KaXMgZG9pbmcgaGVy
ZSB3aGVuIGl0IGNvbWVzIHRvIHRoZSBETUEgQVBJLCBzaW5jZSBoZSBtYWRlIGFsbCB0aGUNCnBh
dGNoZXMgc28gZmFyIHRvIHVzZSBpdC4NCg0KUGxlYXNlIGNvbnNpZGVyIGp1c3QgcmV2aWV3aW5n
IHRoZSBleHBvcnRlZCBmdW5jdGlvbiBzaWduYXR1cmU6DQoNCitzdHJ1Y3Qgc2dfdGFibGUgKmRt
YV9idWZfbWFwKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCisJCQkgICAgIHN0
cnVjdCBwMnBkbWFfcHJvdmlkZXIgKnByb3ZpZGVyLA0KKwkJCSAgICAgc3RydWN0IGRtYV9idWZf
cGh5c192ZWMgKnBoeXNfdmVjLA0KKwkJCSAgICAgc2l6ZV90IG5yX3Jhbmdlcywgc2l6ZV90IHNp
emUsDQorCQkJICAgICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIpDQoNCklmIGlzc3VlcyBh
cmUgZGlzY292ZXJlZCBpbnNpZGUgdGhlIGltcGxlbWVudGF0aW9uIGxhdGVyIG9uIHRoZW4gTGVv
bg0Kd2lsbCBiZSBhdmFpbGFibGUgdG8gZml4IHRoZW0uDQoNClRoZSBjb2RlIGlzIGludGVuZGVk
IHRvIGltcGxlbWVudCB0aGF0IGJhc2ljIGZ1bmN0aW9uIHNpZ25hdHVyZSB3aGljaA0KY2FuIGJl
IHRob3VnaHQgb2YgYXMgZG1hX21hcF9yZXNvdXJjZSgpIGRvbmUgY29ycmVjdGx5IGZvciBQQ0kN
CmRldmljZXMuDQoNCj4gU28gaWYgd2UgY291bGQga2VlcCB0aG9zZSBpbnNpZGUgdGhlIFZGSU8g
ZHJpdmVyIGZvciBub3cgSSB0aGluaw0KPiB0aGF0IHNob3VsZCBiZSBnb29kIHRvIGdvLg0KDQpU
aGF0IHdhcyBzZXZlcmFsIHZlcnNpb25zIGFnby4gQ2hyaXN0b3BoIGlzIHZlcnkgc3Ryb25nbHkg
YWdhaW5zdA0KdGhpcywgaGUgd2FudHMgdG8gc2VlIHRoZSBuZXcgRE1BIEFQSSB1c2VkIGJ5IHdy
YXBwZXIgZnVuY3Rpb25zIGluDQpzdWJzeXRlbXMgcmVsYXRlZCB0byBob3cgdGhlIHN1YnN5c3Rl
bSdzIGRhdGEgc3RydWN0dXJlcyB3b3JrIHJhdGhlcg0KdGhhbiBwcm9saWZlcmF0ZSBpbnRvIGRy
aXZlcnMuIEkgYWdyZWUgd2l0aCB0aGlzLCBzbyB3ZSBuZWVkIHRvIGdvIGluDQp0aGlzIGRpcmVj
dGlvbi4NCg0KT3RoZXIgb3B0aW9ucywgbGlrZSBwdXQgdGhlIGNvZGUgaW4gdGhlIERNQSBBUEkg
YXJlYSwgYXJlIGFsc28gbm90DQpnb2luZyB0byBiZSBhZ3JlZWQgYmVjYXVzZSB3ZSByZWFsbHkg
ZG9uJ3Qgd2FudCB0aGlzIHdlaXJkIERNQUJVRiB1c2UNCm9mIG5vLXN0cnVjdCBwYWdlIHNjYXR0
ZXJsaXN0IHRvIGxlYWsgb3V0IGJleW9uZCBETUFCVUYuDQoNClNvLCB0aGlzIGlzIHRoZSBzdGFy
dCBvZiBhIERNQSBtYXBwaW5nIGhlbHBlciBBUEkgZm9yIERNQUJVRiByZWxhdGVkDQpkYXRhIHN0
cnVjdHVyZXMsIGl0IGludHJvZHVjZXMgYSBzaW1wbGlmaWVkIG1hcHBpbmcgZW50cnkgcG9pbnQg
Zm9yDQpkcml2ZXJzIHRoYXQgb25seSB1c2UgTU1JTy4NCg0KQXMgSSBzYWlkIEkgZXhwZWN0IHRo
aXMgQVBJIHN1cmZhY2UgdG8gcHJvZ3Jlc3MgYXMgb3RoZXIgRFJNIGRyaXZlcnMNCmFyZSB1cGRh
dGVkIChob3BlZnVsbHkgRFJNIGNvbW11bml0eSB3aWxsIHRha2Ugb24gdGhpcyksIGJ1dCB0aGVy
ZSBpcw0Kbm90aGluZyB3cm9uZyB3aXRoIHN0YXJ0aW5nIGJ5IGhhdmluZyBhIGJhc2ljIGVudHJ5
IHBvaW50IGZvciBhIG5hcnJvdw0KdXNlIGNhc2UuDQoNClRoYW5rcywNCkphc29uDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
