Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FA5C70D0D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 20:31:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3AB423F912
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 19:31:34 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by lists.linaro.org (Postfix) with ESMTPS id 9B0623F906
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 19:31:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=RCPml11B;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.172 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-4ee1e18fb37so1175571cf.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 11:31:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1763580676; x=1764185476; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=h7MnLKcAx1SQL4BtR2OdhLpsdZ14wJj1fNMBVXMaHpI=;
        b=RCPml11BENbjhuAHsTVLOt0L4N+FTUwFElaxC6OfGZQ18DSQiO5oYa4tcanEeWsNFZ
         NuaCR8HwlB41T0zt/DevOLl0dy2n5C1raI4gYsawqkgb+bdT+5r3kOL7oJdkA4Ytn/ID
         N3W8PHVr4pQv+bk/46KxSAs4NjapseEoc8AKbcdVDdbK7gAO8KaigFxniCqwh3sOCwHP
         NFUhhVGGXqd44zd3N3QVkDuMKy9e2S5RyvEeNlVDg6SE+KcaNTybcV/IIi/Br6lCMRBS
         yWmlYXhovVIw5tiY4ADtY0j2areKhG4MEOugFVfFmXgmf4g8v6D86y1KCsR3DEhUS5te
         xMWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763580676; x=1764185476;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h7MnLKcAx1SQL4BtR2OdhLpsdZ14wJj1fNMBVXMaHpI=;
        b=NbA1ww2UP+7szekxKDNxbr4rxsLP/Ka8BIOj61J0BPm59EajdmIhd2ZN5+OWOphoql
         bmnC1wToOIzPSBl2MXL8Qceo6Dr1JNOnkcNJrnkxGhfGhoVPQmovAwInm1vBNZXDQ/D0
         eGzMk4wAwzZ0VhavvCVJYs8NrQNuOFUK16KasgHjXY4xO/OPTc2eX9fpWh43EWwrw+E9
         f0fTPCAEvGNIfpbRJsTeEqx94veoyvfhg08yFZktYg082lzoST7IAFXHmNxRFzxPUJkh
         9e5Kqb6rAC2D+uq9Mjd0HcbB4Jdu1Gl/OMWB7HUL7C3pVJEpeVm392yt8vxWmp7cIYFG
         qOOw==
X-Forwarded-Encrypted: i=1; AJvYcCW6uz8RHYQg2+OcNLe8sfhtgYl0zqIBhDtcKd2UPiVWCAbNrwyEkhn3WkctCYJIdHhp9e7IZetRJQ+z07Xs@lists.linaro.org
X-Gm-Message-State: AOJu0YxqMakLCpwwo53u4vPs+4ovO4Z+yNCOa3MValWns/+qqsIZVb6o
	WsaOSIeKUhCg1l9wL4+dpFrxiW9cphJK6pA3C0RKDYNyLxq4cibWzDpnru8E6XlQb60=
X-Gm-Gg: ASbGncsetaWOB/9Pd7Za8sCEF43TNePxsofEzQmT0RxABbYVvNmU7cMZU9vQKUQPox4
	VRHIpTYuM7y9ceQBVM4PitZUNbVYCRCcT9/2qZwIvGYmkEXaVuO0SuDXQo8Ana7TdlxXdSFlnxz
	72ipgEtQ5JIXrogjVtFDoluV2d2V+I8AgmXW28tYc16yTHOewjkv1zyv6w26beCatIvb+H4vIRo
	bfsDk0R2VDdQtEcGk57JErW3h2JQh+eswyqTZpRKNBCa8h8ANJyYQcp2ca9p1Xl2opcJaGwG75T
	twVXa/eIWFrUyte7gjCz1QOfBuu6wWmY0lpoNcSw3EyrKF4Y9d0aU4bOqSBzwNgU5HKccjSh36I
	LYGMoapxtAfm+K6gS6QlSi1yOBYaoHFuni6wIUjNhJ5WtsuG66SwX3qULed8FLQb03y/yEA2B4m
	o2sflh16uwrM2R7musYswx1gTgwmbCWYwc9oKR3YHLDMWVc6OFu8IgLjLXrQaf+bX+eE8=
X-Google-Smtp-Source: AGHT+IH0hpvR5twkqRmVGMRtAcrCxesRIOb4Xizv2z5I0TXHRJV8nSPA0Y9PLt873fJAl178vHWixw==
X-Received: by 2002:ac8:7e4c:0:b0:4ee:4a3a:bd18 with SMTP id d75a77b69052e-4ee4a3abe64mr1136891cf.76.1763580675980;
        Wed, 19 Nov 2025 11:31:15 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ee48e46ed0sm2807721cf.20.2025.11.19.11.31.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 11:31:15 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vLnta-00000000bWq-3r3x;
	Wed, 19 Nov 2025 15:31:14 -0400
Date: Wed, 19 Nov 2025 15:31:14 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20251119193114.GP17968@ziepe.ca>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <8a11b605-6ac7-48ac-8f27-22df7072e4ad@amd.com>
 <20251119132511.GK17968@ziepe.ca>
 <69436b2a-108d-4a5a-8025-c94348b74db6@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69436b2a-108d-4a5a-8025-c94348b74db6@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.49 / 15.00];
	BAYES_HAM(-2.99)[99.96%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.160.172:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	BLOCKLISTDE_FAIL(0.00)[47.55.120.4:server fail,209.85.160.172:server fail];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.160.172:from,47.55.120.4:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9B0623F906
X-Spamd-Bar: ---
Message-ID-Hash: EPVNA7JIKZZZ5D6Z2OZSMWIQ42A7DUP2
X-Message-ID-Hash: EPVNA7JIKZZZ5D6Z2OZSMWIQ42A7DUP2
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex
  Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EPVNA7JIKZZZ5D6Z2OZSMWIQ42A7DUP2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBOb3YgMTksIDIwMjUgYXQgMDI6NDI6MThQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCg0KPiA+Pj4gKwljYXNlIFBDSV9QMlBETUFfTUFQX1RIUlVfSE9TVF9CUklER0U6
DQo+ID4+PiArCQlkbWEtPnN0YXRlID0ga3phbGxvYyhzaXplb2YoKmRtYS0+c3RhdGUpLCBHRlBf
S0VSTkVMKTsNCj4gPj4+ICsJCWlmICghZG1hLT5zdGF0ZSkgew0KPiA+Pj4gKwkJCXJldCA9IC1F
Tk9NRU07DQo+ID4+PiArCQkJZ290byBlcnJfZnJlZV9kbWE7DQo+ID4+PiArCQl9DQo+ID4+PiAr
DQo+ID4+PiArCQlkbWFfaW92YV90cnlfYWxsb2MoYXR0YWNoLT5kZXYsIGRtYS0+c3RhdGUsIDAs
IHNpemUpOw0KPiA+Pg0KPiA+PiBPaCwgdGhhdCBpcyBhIGNsZWFyIG5vLWdvIGZvciB0aGUgY29y
ZSBETUEtYnVmIGNvZGUuDQo+ID4+DQo+ID4+IEl0J3MgaW50ZW50aW9uYWxseSB1cCB0byB0aGUg
ZXhwb3J0ZXIgaG93IHRvIGNyZWF0ZSB0aGUgRE1BDQo+ID4+IGFkZHJlc3NlcyB0aGUgaW1wb3J0
ZXIgY2FuIHdvcmsgd2l0aC4NCj4gPiANCj4gPiBJIGNhbid0IGZ1bGx5IHVuZGVyc3RhbmQgdGhp
cyByZW1hcms/DQo+IA0KPiBUaGUgZXhwb3J0ZXIgc2hvdWxkIGJlIGFibGUgdG8gZGVjaWRlIGlm
IGl0IGFjdHVhbGx5IHdhbnRzIHRvIHVzZQ0KPiBQMlAgd2hlbiB0aGUgdHJhbnNmZXIgaGFzIHRv
IGdvIHRocm91Z2ggdGhlIGhvc3QgYnJpZGdlIChlLmcuIHdoZW4NCj4gSU9NTVUvYnJpZGdlIHJv
dXRpbmcgYml0cyBhcmUgZW5hYmxlZCkuDQoNClN1cmUsIGJ1dCB0aGlzIGlzIGEgc2ltcGxpZmll
ZCBoZWxwZXIgZm9yIGV4cG9ydGVycyB0aGF0IGRvbid0IGhhdmUNCmNob2ljZXMgd2hlcmUgdGhl
IG1lbW9yeSBjb21lcyBmcm9tLg0KDQpJIGZ1bGx5IGV4cGV0IHRvIHNlZSBjaGFuZ2VzIHRvIHRo
aXMgdG8gc3VwcG9ydCBtb3JlIHVzZSBjYXNlcywNCmluY2x1ZGluZyB0aGUgb25lIGFib3ZlLiBX
ZSBzaG91bGQgZG8gdGhvc2UgY2hhbmdlcyBhbG9uZyB3aXRoIHVzZXJzDQptYWtpbmcgdXNlIG9m
IHRoZW0gc28gd2UgY2FuIGV2YWx1YXRlIHdoYXQgd29ya3MgYmVzdC4NCg0KPiBCdXQgb25seSB0
YWtlIHRoYXQgYXMgQWNrZWQtYnksIEkgd291bGQgbmVlZCBhdCBsZWFzdCBhIGRheSAob3INCj4g
d2Vlaykgb2YgZnJlZSB0aW1lIHRvIHdyYXAgbXkgaGVhZCBhcm91bmQgYWxsIHRoZSB0ZWNobmlj
YWwgZGV0YWlscw0KPiBhZ2Fpbi4gQW5kIHRoYXQgaXMgc29tZXRoaW5nIEkgd29uJ3QgaGF2ZSBi
ZWZvcmUgSmFudWFyeSBvciBldmVuDQo+IGxhdGVyLg0KDQpTdXJlLCBpdCBpcyBhbG90LCBhbmQg
SSB0aGluayBEUk0gY29tbXVuaXR5IGluIGdlbmVyYWwgc2hvdWxkIGNvbWUgdXANCnRvIHNwZWVk
IG9uIHRoZSBuZXcgRE1BIEFQSSBhbmQgaG93IHdlIGFyZSBwdXNoaW5nIHRvIHNlZSBQMlAgd29y
aw0Kd2l0aGluIExpbnV4Lg0KDQpTbyB0aGFua3MsIHdlIGNhbiB0YWtlIHRoZSBBY2tlZC1ieSBh
bmQgcHJvZ3Jlc3MgaGVyZS4gSW50ZXJlc3RlZA0KcGFydGllcyBjYW4gcGljayBpdCB1cCBmcm9t
IHRoaXMgcG9pbnQgd2hlbiB0aW1lIGFsbG93cy4NCg0KV2UgY2FuIGFsc28gaGF2ZSBhIG1pbmkt
Y29tbXVuaXR5IGNhbGwgdG8gZ2l2ZSBhIHN1bW1hcnkvZXRjIG9uIHRoZXNlDQp0b3BpY3MuDQoN
ClRoYW5rcywNCkphc29uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
