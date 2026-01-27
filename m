Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJBqGJPneGmHtwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 17:28:03 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E26C197C2C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 17:28:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B2E46400F2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 16:28:01 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by lists.linaro.org (Postfix) with ESMTPS id 3B7D53F724
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jan 2026 16:27:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=QOOCq+2c;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.180 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-5013d163e2fso65737511cf.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jan 2026 08:27:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769531276; x=1770136076; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3Kat2TyZxDqTgTm8MMhUVYtoZ/z4BzE2I09fTuJqEpw=;
        b=QOOCq+2cmVjP/1tbDoF5yruLk2DKTLZbc4uJlo/nGWJaw36XDiskSWIavStsjdTgGZ
         mgvJH9pkM6S31er8VEBglNwIEBJ4yQS5+eQuPgIa0PxPJNZupf/c4AW1XXkaowRdQeqQ
         ABBdrzpk6tJgiJKbgLdaY/Km9iNRLrP47TVoUb47prOXIl8apgnypsAC3mZU0YgWC3gx
         YyUQLIjqUL6P7ZLF8d6senPNO7Ge+eSfTjj9Vkey3KLPCcj7ZUbfT5Pp0ODmb/O4oDJr
         LbrwM1JoZUk8e4nhvOqCpenYgIBNVwnrvasxdv7+7UwgCK4sGh9O45cKnXZj2vH3WW+g
         bd2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769531276; x=1770136076;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Kat2TyZxDqTgTm8MMhUVYtoZ/z4BzE2I09fTuJqEpw=;
        b=LBqv+r/y1YwlK/8fV8vKk3OTOc667Ij/UAhNtzjF4XrxtHFgIC2/wyDzfDs2562lkK
         U+D8bHdaqQxJhcU3uaCYAtXbLEVa/RDRpAD8G9w85t4IjVgFgy3Pri5qJSnq9QSj9usb
         T0vMum0JkcNbE04sX+b7G0jk1PLHd4THnkNuy/kUDk9/4yiXeGZFEYe6aq0n7uL9gPJi
         WtSHchjS1CLDKL2n/0AMFkCTAIzd8/UiJSvyPy/1eHkUqaGGAhsPjgV3YziFtD9BlDAR
         fSaYOG42JAyDypnKSrRoOe9BO8V+bZvxbwr+9Hpls3frPUySZBfUqDf6lPeSFLyWzAO3
         HmRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJ52D35o2ftrS+WNRVGEivFAKv77Cvxy3zwNFDy4EeV6qoNQZFRC0AhfeMe933L/cVMahk8+y5V+siHOkJ@lists.linaro.org
X-Gm-Message-State: AOJu0YyNNNLJtGN67NNUdotcqQ3zrtn9B1KYq9J1PVdi/vBTVJRzGzXk
	aWsMEts0Jkw6qMNFtFHcrkCrQReAkod318Drdj7xGSTQsI9QzDpk6xw0alxPltlL6OU=
X-Gm-Gg: AZuq6aL01EBOT+F1KKB49cneXSlUXHB4YGdxPKDleIg1LYHfhvqpckFuJAmf7uXVpjD
	9S4g7KYxhdMuS1T4iMpWnFlomPVgiTiQcZ9AtpXjwvB3Jf1K+Bg01kTtXuJeHJhOpNt1JDdykks
	8iNClVkcXJJra+RofaLESbczVbappbmdFleSCrxk79FQak32AYnT8pw0XWC6HprQstveXfw8mmF
	GpDKPKwttLhiL4nmioyx2dFnYZYjo0xCg/WUX4YG6WkzxG6/BggiZqvfY+l5DTEaFzDnlw3A5LI
	BOWIRTNAEsQkNgfNtSxc5S3qrnVjtQBwg1tuxZOTukR9Yy2vPi5iIXGYG5lAVE5mELk8FS7gNEf
	ez6Lh3xVCb/nqR4JGA/allGy2gqZengzRv8sTiYEo9dQySXK7znWLZJLS1UzlM2Ck/xYWoN/TWE
	7rgMRUfG2ZMEWo/+4rEuDDpYFUnRqLv3iryFi0xUKtI/nfiZKzwT5kG06xHs/UX7weusRSLYf+V
	Seuiw==
X-Received: by 2002:a05:622a:612:b0:4f1:ba00:4cc6 with SMTP id d75a77b69052e-5032fc167d4mr25702421cf.79.1769531275530;
        Tue, 27 Jan 2026 08:27:55 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502fb8e74ebsm102277581cf.0.2026.01.27.08.27.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 08:27:55 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vklv0-000000095Ys-1TUe;
	Tue, 27 Jan 2026 12:27:54 -0400
Date: Tue, 27 Jan 2026 12:27:54 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260127162754.GH1641016@ziepe.ca>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
 <aXfUZcSEr9N18o6w@google.com>
 <20260127085835.GQ13967@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260127085835.GQ13967@unreal>
X-Spamd-Bar: ---
Message-ID-Hash: XE3JG4SHG57Z5UACVOUBLRSJMSTFZYMV
X-Message-ID-Hash: XE3JG4SHG57Z5UACVOUBLRSJMSTFZYMV
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Pranjal Shrivastava <praan@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@li
 sts.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XE3JG4SHG57Z5UACVOUBLRSJMSTFZYMV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[google.com,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,li,lists.linaro.org,lists.freedesktop.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.962];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: E26C197C2C
X-Rspamd-Action: no action

T24gVHVlLCBKYW4gMjcsIDIwMjYgYXQgMTA6NTg6MzVBTSArMDIwMCwgTGVvbiBSb21hbm92c2t5
IHdyb3RlOg0KPiA+ID4gQEAgLTMzMyw3ICszNTksMzcgQEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVm
X21vdmUoc3RydWN0IHZmaW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2LCBib29sIHJldm9rZWQpDQo+
ID4gPiAgCQkJZG1hX3Jlc3ZfbG9jayhwcml2LT5kbWFidWYtPnJlc3YsIE5VTEwpOw0KPiA+ID4g
IAkJCXByaXYtPnJldm9rZWQgPSByZXZva2VkOw0KPiA+ID4gIAkJCWRtYV9idWZfaW52YWxpZGF0
ZV9tYXBwaW5ncyhwcml2LT5kbWFidWYpOw0KPiA+ID4gKwkJCWRtYV9yZXN2X3dhaXRfdGltZW91
dChwcml2LT5kbWFidWYtPnJlc3YsDQo+ID4gPiArCQkJCQkgICAgICBETUFfUkVTVl9VU0FHRV9C
T09LS0VFUCwgZmFsc2UsDQo+ID4gPiArCQkJCQkgICAgICBNQVhfU0NIRURVTEVfVElNRU9VVCk7
DQo+ID4gPiAgCQkJZG1hX3Jlc3ZfdW5sb2NrKHByaXYtPmRtYWJ1Zi0+cmVzdik7DQo+ID4gPiAr
CQkJaWYgKHJldm9rZWQpIHsNCj4gPiA+ICsJCQkJa3JlZl9wdXQoJnByaXYtPmtyZWYsIHZmaW9f
cGNpX2RtYV9idWZfZG9uZSk7DQo+ID4gPiArCQkJCS8qIExldCdzIHdhaXQgdGlsbCBhbGwgRE1B
IHVubWFwIGFyZSBjb21wbGV0ZWQuICovDQo+ID4gPiArCQkJCXdhaXQgPSB3YWl0X2Zvcl9jb21w
bGV0aW9uX3RpbWVvdXQoDQo+ID4gPiArCQkJCQkmcHJpdi0+Y29tcCwgc2Vjc190b19qaWZmaWVz
KDEpKTsNCj4gPiANCj4gPiBJcyB0aGUgMS1zZWNvbmQgY29uc3RhbnQgc3VmZmljaWVudCBmb3Ig
YWxsIGhhcmR3YXJlLCBvciBzaG91bGQgdGhlIA0KPiA+IGludmFsaWRhdGVfbWFwcGluZ3MoKSBj
b250cmFjdCByZXF1aXJlIHRoZSBjYWxsYmFjayB0byBibG9jayB1bnRpbCANCj4gPiBzcGVjdWxh
dGl2ZSByZWFkcyBhcmUgc3RyaWN0bHkgZmVuY2VkPyBJJ20gd29uZGVyaW5nIGFib3V0IGEgY2Fz
ZSB3aGVyZQ0KPiA+IGEgZGV2aWNlJ3MgZmlybXdhcmUgaGFzIGEgaGlnaCByZXNwb25zZSBsYXRl
bmN5LCBwZXJoYXBzIGR1ZSB0byBpbnRlcm5hbA0KPiA+IG1hbmFnZW1lbnQgdGFza3MgbGlrZSBl
cnJvciByZWNvdmVyeSBvciB0aGVybWFsIGFuZCBpdCBleGNlZWRzIHRoZSAxcyANCj4gPiB0aW1l
b3V0LiANCj4gPiANCj4gPiBJZiB0aGUgZGV2aWNlIGlzIGluIHRoZSBtaWRkbGUgb2YgYSBsYXJn
ZSBETUEgYnVyc3QgYW5kIHRoZSBmaXJtd2FyZSBpcw0KPiA+IHNsb3cgdG8gZmx1c2ggdGhlIGlu
dGVybmFsIHBpcGVsaW5lcyB0byBhIGZ1bGx5ICJxdWllc2NlZCINCj4gPiByZWFkLWFuZC1kaXNj
YXJkIHN0YXRlLCByZWNsYWltaW5nIHRoZSBtZW1vcnkgYXQgZXhhY3RseSAxLjAwMSBzZWNvbmRz
DQo+ID4gcmlza3MgdHJpZ2dlcmluZyBwbGF0Zm9ybS1sZXZlbCBmYXVsdHMuLg0KPiA+IA0KPiA+
IFNpbmNlIHRoZSB3ZW4gZXhwbGljaXRseSBwZXJtaXQgdGhlc2Ugc3BlY3VsYXRpdmUgcmVhZHMg
dW50aWwgdW5tYXAgaXMNCj4gPiBjb21wbGV0ZSwgcmVseWluZyBvbiBhIGhhcmRjb2RlZCB0aW1l
b3V0IGluIHRoZSBleHBvcnRlciBzZWVtcyB0byANCj4gPiBpbnRyb2R1Y2UgYSBoYXJkd2FyZS1k
ZXBlbmRlbnQgcmFjZSBjb25kaXRpb24gdGhhdCBjb3VsZCBjb21wcm9taXNlDQo+ID4gc3lzdGVt
IHN0YWJpbGl0eSB2aWEgSU9NTVUgZXJyb3JzIG9yIEFFUiBmYXVsdHMuIA0KPiA+IA0KPiA+IFNo
b3VsZCB0aGUgaW1wb3J0ZXIgaW5zdGVhZCBiZSByZXF1aXJlZCB0byBndWFyYW50ZWUgdGhhdCBh
bGwgDQo+ID4gc3BlY3VsYXRpdmUgYWNjZXNzIGhhcyBjZWFzZWQgYmVmb3JlIHRoZSBpbnZhbGlk
YXRpb24gY2FsbCByZXR1cm5zPw0KPiANCj4gSXQgaXMgZ3VhcmFudGVlZCBieSB0aGUgZG1hX3Jl
c3Zfd2FpdF90aW1lb3V0KCkgY2FsbCBhYm92ZS4gVGhhdCBjYWxsIGVuc3VyZXMNCj4gdGhhdCB0
aGUgaGFyZHdhcmUgaGFzIGNvbXBsZXRlZCBhbGwgcGVuZGluZyBvcGVyYXRpb25zLiBUaGUgMeKA
kXNlY29uZCBkZWxheSBpcw0KPiBtZWFudCB0byBjYXRjaCBjYXNlcyB3aGVyZSBhbiBpbi1rZXJu
ZWwgRE1BIHVubWFwIGNhbGwgaXMgbWlzc2luZywgd2hpY2ggc2hvdWxkDQo+IG5vdCB0cmlnZ2Vy
IGFueSBETUEgYWN0aXZpdHkgYXQgdGhhdCBwb2ludC4NCg0KQ2hyaXN0aWFuIG1heSBrbm93IGFj
dHVhbCBleGFtcGxlcywgYnV0IG15IGdlbmVyYWwgZmVlbGluZyBpcyBoZSB3YXMNCndvcnJ5aW5n
IGFib3V0IGRyaXZlcnMgdGhhdCBoYXZlIHB1c2hlZCB0aGUgRE1BQlVGIHRvIHZpc2liaWxpdHkg
b24NCnRoZSBHUFUgYW5kIHRoZSBtb3ZlIG5vdGlmeSAmIGZlbmNlcyBvbmx5IHNob290IGRvd24g
c29tZSBhY2Nlc3MuIFNvDQppdCBoYXMgdG8gd2FpdCB1bnRpbCB0aGUgRE1BQlVGIGlzIGZpbmFs
bHkgdW5tYXBwZWQuDQoNClByYW5qYWwncyBleGFtcGxlIHNob3VsZCBiZSBjb3ZlcmVkIGJ5IHRo
ZSBkcml2ZXIgYWRkaW5nIGEgZmVuY2UgYW5kDQp0aGVuIHRoZSB1bmJvdW5kZWQgZmVuY2Ugd2Fp
dCB3aWxsIGNvbXBsZXRlIGl0Lg0KDQpJIHRoaW5rIHRoZSBvcGVuIHF1ZXN0aW9uIGhlcmUgaXMg
aWYgZHJpdmVycyB0aGF0IGNhbid0IHJlbHkgb24gdGhlaXINCmZlbmNlcyBzaG91bGQgcmV0dXJu
IGRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZSgpID0gZmFsc2UgPyBJdCBkZXBlbmRzDQpvbiBob3cg
bG9uZyB0aGV5IHdpbGwgbGVhdmUgdGhlIGJ1ZmZlcnMgbWFwcGVkLCBhbmQgaWYgaXQgaXMgImJv
dW5kZWQNCnRpbWUiLg0KDQpUaGUgY29udmVyc2UgaXMgd2Ugd2FudCB0byBkZXRlY3QgYnVncyB3
aGVyZSBkcml2ZXJzIGhhdmUgd3JvbmdseSBzZXQNCmRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZSgp
ID0gdHJ1ZSBhbmQgdGhpcyB0dXJucyBpbnRvIGFuIGluZmluaXRlDQpzbGVlcCwgc28gdGhlIGxv
Z2dpbmcgaXMgbmVjZXNzYXJ5LCBJTUhPLg0KDQpBdCB3b3JzdCB0aGUgY29kZSBzaG91bGQgc2xl
ZXAgMXMsIHByaW50LCB0aGVuIGtlZXAgc2xlZXBpbmcuLg0KDQpKYXNvbg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
