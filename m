Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCF1C6EDB6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 14:25:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 00FA43F826
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 13:25:34 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by lists.linaro.org (Postfix) with ESMTPS id 46B593F788
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 13:25:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=hjUTZO5M;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.173 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4eddceccb89so71897991cf.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 05:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1763558713; x=1764163513; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7FcA8gVt6NKvMsMWTMSBQuU8SYBlABMNBdbtn9F9iv8=;
        b=hjUTZO5MNlEIfo6/UimxAdBYSckF4Q2UD4RpyKpIms0AO9cF7yED4fiSgxEiM/DyTd
         NrPJgh1cNmDB5SNTyslKoIZIsn+EdNdg1PCC0AupJH0a0LVANZfTNzk54VRYS7j/XHXW
         C1ezvMt1cevHiVFlYculbPwsddXnLmLLxyIYHkT0sbP7CTU0eZAD8rmj2p29e7Va9Wwg
         W+Nr4/iG6QlUrRAviNMEVOGG8RDNJ7nV3t3A16iXAb2smnehwor8wbOkbA6P174Ry7UP
         lQF475Loo7tj/3i+LQNQ+7ivfMclrKzFuMqbJv7AgTJdpkz1TZ8A4BlmxVWcN210norL
         /VQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763558713; x=1764163513;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7FcA8gVt6NKvMsMWTMSBQuU8SYBlABMNBdbtn9F9iv8=;
        b=SeQDe0pOwMcBF/uI6EbA0+q7YcRed3S+xYPqQ+Nuq/88/DAEf0CvcdlaMAL4uDxQVn
         tvjrRclTRmlyRyO8N6mFdnLitImzAJau4jZqLlWFwRL9JMZ+XnVdlwnw8dFHF7y5cd8A
         RgcMR5eKGz+tjLBUOQGgnr/OAnsR9I2QpaJd/XBGpMX4NHL7NyIl/Ji0YptxMJqGKf7l
         OI7gEe5qrDf7culwxUasp3H0oxe+3P4x0+Yy0t+TQy0AxMkI3hXcbTlUEuyP64BYdF5P
         wpS/yK/9vsQitAZ9DUlqfL553EsIrsZ3ifHQbqmDYmDiniVkdSXyHGsG8tjAcJwq2ifU
         3rOw==
X-Forwarded-Encrypted: i=1; AJvYcCUIR3qrVyzByoHAyyClEi+x+M91nGYUQUbWUx+oS/k3SoUluehjdqh4r2XhlOegxzlyhyO1zvThrrrXWyJ4@lists.linaro.org
X-Gm-Message-State: AOJu0Yz/EjucTGb45p8UC2lhMu2rSD4APsnd1K9wdL0eNz66+XywB2Il
	KNRWM6vh7pMY5orwvXwvYhzAy2DFaY/t4yvAy6UaJyyetb6WgzJZBW9nEOEHT2eUOwU=
X-Gm-Gg: ASbGncs2+FeGKaFdJbxv4983K4I7EjUF2LNG7p4ECOmiGsOa0yO9/MSskFJL39zvx6L
	tfNJqblBmjZB20WUJM36My/9Fb5LdUlTKV1tEhp8PbhMm9Js28H/ETiAyar1Pu2gJe3lY/4LZ8U
	m5u/vr89jV+Txu+ubSkiG7uq/DaFhUTkdEs2w4t6sDsKUIbJLibyo/DH8mPqPLy8eQ/iy0fdbyM
	27tKs74kVuL4q+HGWY5ehGyMseZKuLmc9IoUPmQPiFTuniia/CqsvQvDWhc07arcf4pkrYdHfGF
	EH3LdQtzu3Z+00xYGURE4x7LoL9/ar2VLoJhA+cLx5t1eyIPd4Y142nFQSwFYY/dQHpUOtzi12C
	tr+vX5T1GmBGvbO79IAgZoaZgnjl3Hqj78iC/0AZ86Neab7rWeAEG/KeEuEWE2oihGggZYUTXXi
	/vck9Z9D2Hm7J6MhhWDYPy43O3yaZxVJ/3VDVMOfsAWFCJG+RRZuwzjdK8mbJ8HYWTA1Igf4nWO
	SmUsQ==
X-Google-Smtp-Source: AGHT+IGcHnQoF5t1hy3jZRVLXrR3AGxUUwufE8qFpbPEJxiBipRIqKgpWukFR+qkVncUWaOAApoSpg==
X-Received: by 2002:a05:622a:1a8d:b0:4ee:219e:e66 with SMTP id d75a77b69052e-4ee219e1ccbmr140009891cf.83.1763558712629;
        Wed, 19 Nov 2025 05:25:12 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88286588be1sm133530266d6.47.2025.11.19.05.25.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 05:25:11 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vLiBL-00000000Z6L-0jbP;
	Wed, 19 Nov 2025 09:25:11 -0400
Date: Wed, 19 Nov 2025 09:25:11 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20251119132511.GK17968@ziepe.ca>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <8a11b605-6ac7-48ac-8f27-22df7072e4ad@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a11b605-6ac7-48ac-8f27-22df7072e4ad@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.173:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	BLOCKLISTDE_FAIL(0.00)[47.55.120.4:query timed out,209.85.160.173:query timed out];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 46B593F788
X-Spamd-Bar: ---
Message-ID-Hash: 76CZ2Z37PRSNZN66IHPJ6JGWBQNEI2NX
X-Message-ID-Hash: 76CZ2Z37PRSNZN66IHPJ6JGWBQNEI2NX
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex
  Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/76CZ2Z37PRSNZN66IHPJ6JGWBQNEI2NX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBOb3YgMTksIDIwMjUgYXQgMDI6MTY6NTdQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gPiArLyoqDQo+ID4gKyAqIGRtYV9idWZfbWFwIC0gUmV0dXJucyB0aGUgc2Nh
dHRlcmxpc3QgdGFibGUgb2YgdGhlIGF0dGFjaG1lbnQgZnJvbSBhcnJheXMNCj4gPiArICogb2Yg
cGh5c2ljYWwgdmVjdG9ycy4gVGhpcyBmdW5jaXRvbiBpcyBpbnRlbmRlZCBmb3IgTU1JTyBtZW1v
cnkgb25seS4NCj4gPiArICogQGF0dGFjaDoJW2luXQlhdHRhY2htZW50IHdob3NlIHNjYXR0ZXJs
aXN0IGlzIHRvIGJlIHJldHVybmVkDQo+ID4gKyAqIEBwcm92aWRlcjoJW2luXQlwMnBkbWEgcHJv
dmlkZXINCj4gPiArICogQHBoeXNfdmVjOglbaW5dCWFycmF5IG9mIHBoeXNpY2FsIHZlY3RvcnMN
Cj4gPiArICogQG5yX3JhbmdlczoJW2luXQludW1iZXIgb2YgZW50cmllcyBpbiBwaHlzX3ZlYyBh
cnJheQ0KPiA+ICsgKiBAc2l6ZToJW2luXQl0b3RhbCBzaXplIG9mIHBoeXNfdmVjDQo+ID4gKyAq
IEBkaXI6CVtpbl0JZGlyZWN0aW9uIG9mIERNQSB0cmFuc2Zlcg0KPiA+ICsgKg0KPiA+ICsgKiBS
ZXR1cm5zIHNnX3RhYmxlIGNvbnRhaW5pbmcgdGhlIHNjYXR0ZXJsaXN0IHRvIGJlIHJldHVybmVk
OyByZXR1cm5zIEVSUl9QVFINCj4gPiArICogb24gZXJyb3IuIE1heSByZXR1cm4gLUVJTlRSIGlm
IGl0IGlzIGludGVycnVwdGVkIGJ5IGEgc2lnbmFsLg0KPiA+ICsgKg0KPiA+ICsgKiBPbiBzdWNj
ZXNzLCB0aGUgRE1BIGFkZHJlc3NlcyBhbmQgbGVuZ3RocyBpbiB0aGUgcmV0dXJuZWQgc2NhdHRl
cmxpc3QgYXJlDQo+ID4gKyAqIFBBR0VfU0laRSBhbGlnbmVkLg0KPiA+ICsgKg0KPiA+ICsgKiBB
IG1hcHBpbmcgbXVzdCBiZSB1bm1hcHBlZCBieSB1c2luZyBkbWFfYnVmX3VubWFwKCkuDQo+ID4g
KyAqLw0KPiA+ICtzdHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZfbWFwKHN0cnVjdCBkbWFfYnVmX2F0
dGFjaG1lbnQgKmF0dGFjaCwNCj4gDQo+IFRoYXQgaXMgY2xlYXJseSBub3QgYSBnb29kIG5hbWUg
Zm9yIHRoaXMgZnVuY3Rpb24uIFdlIGFscmVhZHkgaGF2ZSBvdmVybG9hZGVkIHRoZSB0ZXJtICpt
YXBwaW5nKiB3aXRoIHNvbWV0aGluZyBjb21wbGV0ZWx5IGRpZmZlcmVudC4NCj4gDQo+ID4gKwkJ
CSAgICAgc3RydWN0IHAycGRtYV9wcm92aWRlciAqcHJvdmlkZXIsDQo+ID4gKwkJCSAgICAgc3Ry
dWN0IGRtYV9idWZfcGh5c192ZWMgKnBoeXNfdmVjLA0KPiA+ICsJCQkgICAgIHNpemVfdCBucl9y
YW5nZXMsIHNpemVfdCBzaXplLA0KPiA+ICsJCQkgICAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9u
IGRpcikNCj4gPiArew0KPiA+ICsJdW5zaWduZWQgaW50IG5lbnRzLCBtYXBwZWRfbGVuID0gMDsN
Cj4gPiArCXN0cnVjdCBkbWFfYnVmX2RtYSAqZG1hOw0KPiA+ICsJc3RydWN0IHNjYXR0ZXJsaXN0
ICpzZ2w7DQo+ID4gKwlkbWFfYWRkcl90IGFkZHI7DQo+ID4gKwlzaXplX3QgaTsNCj4gPiArCWlu
dCByZXQ7DQo+ID4gKw0KPiA+ICsJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoYXR0YWNoLT5kbWFidWYt
PnJlc3YpOw0KPiA+ICsNCj4gPiArCWlmIChXQVJOX09OKCFhdHRhY2ggfHwgIWF0dGFjaC0+ZG1h
YnVmIHx8ICFwcm92aWRlcikpDQo+ID4gKwkJLyogVGhpcyBmdW5jdGlvbiBpcyBzdXBwb3NlZCB0
byB3b3JrIG9uIE1NSU8gbWVtb3J5IG9ubHkgKi8NCj4gPiArCQlyZXR1cm4gRVJSX1BUUigtRUlO
VkFMKTsNCj4gPiArDQo+ID4gKwlkbWEgPSBremFsbG9jKHNpemVvZigqZG1hKSwgR0ZQX0tFUk5F
TCk7DQo+ID4gKwlpZiAoIWRtYSkNCj4gPiArCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsNCj4g
PiArDQo+ID4gKwlzd2l0Y2ggKHBjaV9wMnBkbWFfbWFwX3R5cGUocHJvdmlkZXIsIGF0dGFjaC0+
ZGV2KSkgew0KPiA+ICsJY2FzZSBQQ0lfUDJQRE1BX01BUF9CVVNfQUREUjoNCj4gPiArCQkvKg0K
PiA+ICsJCSAqIFRoZXJlIGlzIG5vIG5lZWQgaW4gSU9WQSBhdCBhbGwgZm9yIHRoaXMgZmxvdy4N
Cj4gPiArCQkgKi8NCj4gPiArCQlicmVhazsNCj4gPiArCWNhc2UgUENJX1AyUERNQV9NQVBfVEhS
VV9IT1NUX0JSSURHRToNCj4gPiArCQlkbWEtPnN0YXRlID0ga3phbGxvYyhzaXplb2YoKmRtYS0+
c3RhdGUpLCBHRlBfS0VSTkVMKTsNCj4gPiArCQlpZiAoIWRtYS0+c3RhdGUpIHsNCj4gPiArCQkJ
cmV0ID0gLUVOT01FTTsNCj4gPiArCQkJZ290byBlcnJfZnJlZV9kbWE7DQo+ID4gKwkJfQ0KPiA+
ICsNCj4gPiArCQlkbWFfaW92YV90cnlfYWxsb2MoYXR0YWNoLT5kZXYsIGRtYS0+c3RhdGUsIDAs
IHNpemUpOw0KPiANCj4gT2gsIHRoYXQgaXMgYSBjbGVhciBuby1nbyBmb3IgdGhlIGNvcmUgRE1B
LWJ1ZiBjb2RlLg0KPiANCj4gSXQncyBpbnRlbnRpb25hbGx5IHVwIHRvIHRoZSBleHBvcnRlciBo
b3cgdG8gY3JlYXRlIHRoZSBETUENCj4gYWRkcmVzc2VzIHRoZSBpbXBvcnRlciBjYW4gd29yayB3
aXRoLg0KDQpJIGNhbid0IGZ1bGx5IHVuZGVyc3RhbmQgdGhpcyByZW1hcms/DQoNCj4gV2UgY291
bGQgYWRkIHNvbWV0aGluZyBsaWtlIGEgZG1hX2J1Zl9zZ19oZWxwZXIuYyBvciBzaW1pbGFyIGFu
ZCBwdXQgaXQgaW4gdGhlcmUuDQoNClllcywgdGhlIGludGVudGlvbiBpcyB0aGlzIGZ1bmN0aW9u
IGlzIGFuICJleHBvcnRlciBoZWxwZXIiIHRoYXQgYW4NCmV4cG9ydGVyIGNhbiBjYWxsIGlmIGl0
IHdhbnRzIHRvIGhlbHAgZ2VuZXJhdGUgdGhlIHNjYXR0ZXJsaXN0Lg0KDQpTbyB5b3VyICJuby1n
byIgaXMganVzdCBhYm91dCB3aGF0IGZpbGUgaXQgaXMgaW4sIG5vdCBhbnl0aGluZyBhYm91dA0K
aG93IGl0IHdvcmtzPw0KDQpUaGFua3MsDQpKYXNvbg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
