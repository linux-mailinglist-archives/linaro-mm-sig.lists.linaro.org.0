Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOB1BABh5mkxvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:23:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DDF43117C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:23:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B0FC3F7D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:23:10 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id 0FAFE3F762
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 15:40:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=v+ZbrjQA;
	spf=pass (lists.linaro.org: domain of smostafa@google.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=smostafa@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4852af55981so92815e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 08:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1773762006; x=1774366806; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CDw4r5ujTl31OHrtYbqvixsT9t+9enT6zG9dzarVNeI=;
        b=v+ZbrjQAajF7/xHoRb3l5pxDUaJPH+HX9APqbkgwL8ZpdGtfkazUbh3aoCqG5gjDyY
         So1DaetDlHpAy1HYr5nLWn9RZzgCgMGaPRypgEOPNrSGp4l4ybYWM4N0bgbeQ8JnCrbR
         swoJHIjFyDSdAohBOxrBGab2l8XtTLzlCwO8Y6LyTjwoSJVVxHkLmeolRFef7tULKbLM
         9TxbM4KVOkcfVP8lVyAyNetbkLK1ZWayA9P/wtYn6Rg6t0F8dXlxx7rLV9m1+Xo7+7aj
         VAvBM+uN5f0K5F9jMPTL6jeIFZIumy/D28ZC9IQuBWnBZoj8CkD4wNjD/pt8MEsRgAk/
         5i+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773762006; x=1774366806;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CDw4r5ujTl31OHrtYbqvixsT9t+9enT6zG9dzarVNeI=;
        b=UAeFiJTQ1gPSjvhgUjbVf929FFVy9dhx3w1aw0gkHU9LMAsBKI+4EMU04kXZycj+u7
         y5biTy/ue1vItMFOPbp38HXLaujbSTGEFLPl+X+hOLkXDYKTa3BTvC1o8PEtWqAxbcTJ
         uC5WfewzXL+y1LB+xGui1/W59WP4vf8a1TuVVTG7s1YApg6O+7rROMZC7Ga/yZg3AZvN
         XT94JkWVFveJ+GFR3SKJSPe6SHXIRwk30w8DTE3kC9aaKrvScnBsFGEZIUJm7bv6Rrwy
         PzHZhIn5eI9vx5MeYvkRgRuqvzxu3y9nx6aZTr3O6vkP18xc0Zi2Y8yfsnIHYYA4peQm
         xT7A==
X-Forwarded-Encrypted: i=1; AJvYcCVj2mOSEUhteW5CmiHdnLL6rrtz5MnoAPJ+QRF8l7qi4UqcQ+V0N39gjcoXVhiOllAMBNTdNEBUAQCq9Obv@lists.linaro.org
X-Gm-Message-State: AOJu0YwljTabD/kVXfUttMxA9Z1FWrjVx548uX+gq8PQYhZ7B3X5i3kZ
	aDWb7jxwjA6yefXzzxL+4jEwXrVpxsQyFNA1ftk77Lda5S/29fC1nauJoJRtWwhx/Q==
X-Gm-Gg: ATEYQzxJF766jOX+kgBssUHYv5ZyQ0AQDE+lMuWVGkueOntdtniWVhpGYlF9h9eHB2c
	L/1qVeH5ttLo+TgnnT+Zc8emYiHVY2issDP4kB1Xv7paIQZLfzLN30Qfhh/0Sr4B3pj77hN7nBd
	rGnd3UGxeXgvqZNPs+13r8a+G991O311Xtivv7sqm6PDNTrTYPKYxsM69O9TnhssILCax/pJr6j
	AJw+9VREaoZe4vatGOZ06nfBqVsvuot9l5Q/3CuCeVoOGMySNXpOX6Yfi7m9HZqVS8MbeuXmbtL
	xX8wCp+H35vzP+oHIagWdszpL8unDSR8jl0Rlo2sOyFey/TR/Ix+zVTrwSnsVa9fXFYf9VkQa8t
	dlCzpJ2AuR7JVlYX3h0TjN8pcQN/M/XCX/ZKdXnCSnlWzFVvMyaX/cJ0rKukkDIYkG0RxQW42Np
	nlNbcuqL1VCQqDzutK9Fpro40uW/Dcq1Y3NyiVCF5qekTgHpbFf4s8n2JO
X-Received: by 2002:a7b:cb8b:0:b0:483:6f85:b16e with SMTP id 5b1f17b1804b1-485709958a2mr850705e9.3.1773762005359;
        Tue, 17 Mar 2026 08:40:05 -0700 (PDT)
Received: from google.com (54.95.38.34.bc.googleusercontent.com. [34.38.95.54])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856eae3396sm72909465e9.9.2026.03.17.08.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 08:40:04 -0700 (PDT)
Date: Tue, 17 Mar 2026 15:40:01 +0000
From: Mostafa Saleh <smostafa@google.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <abl10SQ4tdasfErt@google.com>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <ablV_f_l7wD2m63E@google.com>
 <xdy5anped2koy47cuxbbqocyypisl7lagwvpuokpzpggohk2dp@yilc5ihictph>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <xdy5anped2koy47cuxbbqocyypisl7lagwvpuokpzpggohk2dp@yilc5ihictph>
X-Spamd-Bar: ----
X-MailFrom: smostafa@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XTEYST2L53VJZVLWEVTTSARPMAZARLMU
X-Message-ID-Hash: XTEYST2L53VJZVLWEVTTSARPMAZARLMU
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:21:55 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 0/2] dma-buf: heaps: system: add an option to allocate explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XTEYST2L53VJZVLWEVTTSARPMAZARLMU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	DATE_IN_PAST(1.00)[817];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[smostafa@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.996];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email]
X-Rspamd-Queue-Id: 88DDF43117C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXIgMTcsIDIwMjYgYXQgMDI6Mzc6MDJQTSArMDEwMCwgSmlyaSBQaXJrbyB3cm90
ZToNCj4gVHVlLCBNYXIgMTcsIDIwMjYgYXQgMDI6MjQ6MTNQTSArMDEwMCwgc21vc3RhZmFAZ29v
Z2xlLmNvbSB3cm90ZToNCj4gPkhpIEppcmksDQo+ID4NCj4gPk9uIFRodSwgTWFyIDA1LCAyMDI2
IGF0IDAxOjM2OjM5UE0gKzAxMDAsIEppcmkgUGlya28gd3JvdGU6DQo+ID4+IEZyb206IEppcmkg
UGlya28gPGppcmlAbnZpZGlhLmNvbT4NCj4gPj4gDQo+ID4+IENvbmZpZGVudGlhbCBjb21wdXRp
bmcgKENvQ28pIFZNcy9ndWVzdHMsIHN1Y2ggYXMgQU1EIFNFViBhbmQgSW50ZWwgVERYLA0KPiA+
PiBydW4gd2l0aCBlbmNyeXB0ZWQvcHJvdGVjdGVkIG1lbW9yeSB3aGljaCBjcmVhdGVzIGEgY2hh
bGxlbmdlDQo+ID4+IGZvciBkZXZpY2VzIHRoYXQgZG8gbm90IHN1cHBvcnQgRE1BIHRvIGl0IChu
byBURElTUCBzdXBwb3J0KS4NCj4gPj4gDQo+ID4+IEZvciBrZXJuZWwtb25seSBETUEgb3BlcmF0
aW9ucywgc3dpb3RsYiBib3VuY2UgYnVmZmVyaW5nIHByb3ZpZGVzIGENCj4gPj4gdHJhbnNwYXJl
bnQgc29sdXRpb24gYnkgY29weWluZyBkYXRhIHRocm91Z2ggZGVjcnlwdGVkIG1lbW9yeS4NCj4g
Pj4gSG93ZXZlciwgdGhlIG9ubHkgd2F5IHRvIGdldCB0aGlzIG1lbW9yeSBpbnRvIHVzZXJzcGFj
ZSBpcyB2aWEgdGhlIERNQQ0KPiA+PiBBUEkncyBkbWFfYWxsb2NfcGFnZXMoKS9kbWFfbW1hcF9w
YWdlcygpIHR5cGUgaW50ZXJmYWNlcyB3aGljaCBsaW1pdHMNCj4gPj4gdGhlIHVzZSBvZiB0aGUg
bWVtb3J5IHRvIGEgc2luZ2xlIERNQSBkZXZpY2UsIGFuZCBpcyBpbmNvbXBhdGlibGUgd2l0aA0K
PiA+PiBwaW5fdXNlcl9wYWdlcygpLg0KPiA+PiANCj4gPj4gVGhlc2UgbGltaXRhdGlvbnMgYXJl
IHBhcnRpY3VsYXJseSBwcm9ibGVtYXRpYyBmb3IgdGhlIFJETUEgc3Vic3lzdGVtDQo+ID4+IHdo
aWNoIG1ha2VzIGhlYXZ5IHVzZSBvZiBwaW5fdXNlcl9wYWdlcygpIGFuZCBleHBlY3RzIGZsZXhp
YmxlIG1lbW9yeQ0KPiA+PiB1c2FnZSBiZXR3ZWVuIG1hbnkgZGlmZmVyZW50IERNQSBkZXZpY2Vz
Lg0KPiA+PiANCj4gPj4gVGhpcyBwYXRjaCBzZXJpZXMgZW5hYmxlcyB1c2Vyc3BhY2UgdG8gZXhw
bGljaXRseSByZXF1ZXN0IGRlY3J5cHRlZA0KPiA+PiAoc2hhcmVkKSBtZW1vcnkgYWxsb2NhdGlv
bnMgZnJvbSB0aGUgZG1hLWJ1ZiBzeXN0ZW0gaGVhcC4NCj4gPj4gVXNlcnNwYWNlIGNhbiBtbWFw
IHRoaXMgbWVtb3J5IGFuZCBwYXNzIHRoZSBkbWEtYnVmIGZkIHRvIG90aGVyDQo+ID4+IGV4aXN0
aW5nIGltcG9ydGVycyBzdWNoIGFzIFJETUEgb3IgRFJNIGRldmljZXMgdG8gYWNjZXNzIHRoZQ0K
PiA+PiBtZW1vcnkuIFRoZSBETUEgQVBJIGlzIGltcHJvdmVkIHRvIGFsbG93IHRoZSBkbWEgaGVh
cCBleHBvcnRlciB0byBETUENCj4gPj4gbWFwIHRoZSBzaGFyZWQgbWVtb3J5IHRvIGVhY2ggaW1w
b3J0aW5nIGRldmljZS4NCj4gPg0KPiA+SSBoYXZlIGJlZW4gbG9va2luZyBpbnRvIGEgc2ltaWxh
ciBwcm9ibGVtIHdpdGggcmVzdHJpY3RlZC1kbWFbMV0gYW5kDQo+ID50aGUgaW5hYmlsaXR5IG9m
IHRoZSBETUEgQVBJIHRvIHJlY29nbml6ZSB0aGF0IGEgYmxvY2sgb2YgbWVtb3J5IGlzDQo+ID5h
bHJlYWR5IGRlY3J5cHRlZC4NCj4gPg0KPiA+SG93ZXZlciwgaW4geW91ciBjYXNlLCBhZGRpbmcg
YSBuZXcgYXR0ciDigJxETUFfQVRUUl9DQ19ERUNSWVBURUTigJ0gd29ya3MNCj4gPndlbGwgYXMg
ZG1hLWJ1ZiBvd25zIHRoZSBtZW1vcnksIGFuZCBpcyBib3RoIHJlc3BvbnNpYmxlIGZvciB0aGUN
Cj4gPnNldF9tZW1vcnlfZGVjcnlwdGVkKCkgYW5kIHBhc3NpbmcgdGhlIERNQSBhdHRycy4NCj4g
Pg0KPiA+T24gdGhlIG90aGVyIGhhbmQsIGZvciByZXN0cmljdGVkLWRtYSwgdGhlIG1lbW9yeSBk
ZWNyeXB0aW9uIGlzIGRlZXANCj4gPmluIHRoZSBETUEgZGlyZWN0IG1lbW9yeSBhbGxvY2F0aW9u
IGFuZCB0aGUgRE1BIEFQSSBjYWxsZXJzIChmb3IgZXgNCj4gPnZpcnRpbyBkcml2ZXJzKSBhcmUg
Y2x1ZWxlc3MgYWJvdXQgaXQgYW5kIGNhbuKAmXQgcGFzcyBhbnkgYXR0cnMuDQo+ID5NeSBwcm9w
b3NhbCB3YXMgc3BlY2lmaWMgdG8gcmVzdHJpY3RlZC1kbWEgYW5kIHdvbuKAmXQgd29yayBmb3Ig
eW91ciBjYXNlLg0KPiA+DQo+ID5JIGFtIHdvbmRlcmluZyBpZiB0aGUga2VybmVsIHNob3VsZCBo
YXZlIGEgbW9yZSBzb2xpZCwgdW5pZmllZCBtZXRob2QNCj4gPmZvciBpZGVudGlmeWluZyBhbHJl
YWR5LWRlY3J5cHRlZCBtZW1vcnkgaW5zdGVhZC4gUGVyaGFwcyB3ZSBuZWVkIGENCj4gPndheSBm
b3IgdGhlIERNQSBBUEkgdG8gbmF0aXZlbHkgcmVjb2duaXplIHRoZSBlbmNyeXB0aW9uIHN0YXRl
IG9mIGENCj4gPnBoeXNpY2FsIHBhZ2UgKHdvcmtpbmcgYWxvbmdzaWRlIGZvcmNlX2RtYV91bmVu
Y3J5cHRlZChkZXYpKSwgcmF0aGVyDQo+ID50aGFuIHJlbHlpbmcgb24gY2FsbGVyLXByb3ZpZGVk
IGF0dHJpYnV0ZXM/DQo+IA0KPiBJIGFjdHVhbGx5IGhhZCBpdCBvcmlnaW5hbGx5IGltcGxlbWVu
dGVkIHByb2JhYmx5IGluIHRoZSBzaW1pbGFyIHdheSB5b3UNCj4gc3VnZ2VzdC4gSSBoYWQgYSBi
aXQgaW4gcGFnZS9mb2xpbyBzdHJ1Y3QgdG8gaW5kaWNhdGUgdGhlDQo+ICJzaGFyZWQvZGVjcnlw
dGVkIiBzdGF0ZS4gSG93ZXZlciBJIHdhcyB0b2xkIHRoYXQgYWRkaW5nIHN1Y2ggYml0IGlzDQo+
IGJhc2ljYWxseSBhIG5vLWdvLiBJc24ndCB0aGF0IHJpZ2h0Pw0KPiANCg0KWWVzLCBJIGJlbGll
dmUgaXTigJlzIGRpc2NvdXJhZ2VkIHRvIGFkZCBuZXcgZmllbGRzIHRvIHRoZSBzdHJ1Y3QgcGFn
ZS4NCkJ1dCBJIHNlZSB0aGUgbWVtb3J5IGVuY3J5cHRpb24gQVBJIGlzIHNwaWxsaW5nIGluIGRp
ZmZlcmVudCBwbGFjZXMNCmFuZCBJIGFtIG5vdCBzdXJlIGlmIHRoYXTigJlzIGEgZ29vZCBlbm91
Z2gganVzdGlmaWNhdGlvbiBmb3IgdGhhdCBvcg0KbWF5YmUgd2UganVzdCBuZWVkIHRvIHJlLWFy
Y2hpdGVjdCBpdC4NCkZvciB0aGUgcmVzdHJpY3RlZC1kbWEgc3R1ZmYsIHdlIGRvbuKAmXQgYWN0
dWFsbHkgY2FyZSBhYm91dCB0aGUNCmFkZHJlc3MsIGEgZGV2aWNlIGNhbiBlaXRoZXIgaGFuZGxl
IGVuY3J5cHRpb24gb3Igbm90LCBzbyByZWx5aW5nIG9uDQpmb3JjZV9kbWFfdW5lbmNyeXB0ZWQo
c3RydWN0IGRldmljZSAqKSB3aGljaCBpcyBpbXBsZW1lbnRlZCBieSB0aGUNCmFyY2hpdGVjdHVy
ZSBpcyBlbm91Z2gsIGFuZCB3ZSBqdXN0IG5lZWQgdG8gaW50ZWdyYXRlIHRoYXQgc28gaXQNCmNh
biBiZSB1c2VkIGZyb20gU1dJT1RMQiBhbmQgRE1BLWRpcmVjdCAoYW5kIG90aGVyIHBsYWNlcykN
CmNvbnNpc3RlbnRseS4gKGFsdGhvdWdoIHRoYXQgbWlnaHQgbm90IGJlIGEgc2ltcGxlIGFzIGl0
IHNvdW5kcykNCg0KSSBhbSBub3Qgc3VyZSBpbiB0aGUgZG1hLWJ1ZiBjYXNlIGlmIHRoYXQgd291
bGQgYmUgZW5vdWdoLCBidXQNCmFub3RoZXIgd2F5IHRvIGhhdmUgdGhpcyBwZXIgcGFnZSBhbmQg
dG8gYXZvaWQgZW5jb2RpbmcgdGhpcyBpbg0Kc3RydWN0IHBhZ2UsIGlzIHRvIHB1c2ggdGhpcyBw
cm9ibGVtIHRvIHRoZSBhcmNoIGNvZGUgYW5kIGl0IGNhbg0KcmVseSBvbiB0aGluZ3MgYXMgdGhl
IHBhZ2UgdGFibGUgKEkgYmVsaWV2ZSBBUk0gQ0NBIGhhdmUgYSBiaXQNCmZvciB0aGF0KQ0KDQpB
bnl3YXksIEkgdGhpbmsgdGhlcmUgc2hvdWxkIGJlIHNvbWUgYm91bmRhcmllcyBpbiB0aGUga2Vy
bmVsIHRoYXQNCmRlZmluZXMgdGhhdCBpbnN0ZWFkIG9mIGVhY2ggc3Vic3lzdGVtIGhhdmluZyBp
dHMgYXNzdW1wdGlvbnMsDQplc3BlY2lhbGx5IG1lbW9yeSBlbmNyeXB0aW9uL2RlY3J5cHRpb24g
cHJvYmxlbXMgdGhhdCBjYW4gZWFzaWx5DQpjYXVzZSBzZWN1cml0eSBpc3N1ZXMuDQoNClRoYW5r
cywNCk1vc3RhZmENCg0KPiANCj4gPg0KPiA+WzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Fs
bC8yMDI2MDMwNTE3MDMzNS45NjM1NjgtMS1zbW9zdGFmYUBnb29nbGUuY29tLw0KPiA+DQo+ID5U
aGFua3MsDQo+ID5Nb3N0YWZhDQo+ID4NCj4gPg0KPiA+PiANCj4gPj4gSmlyaSBQaXJrbyAoMik6
DQo+ID4+ICAgZG1hLW1hcHBpbmc6IGludHJvZHVjZSBETUFfQVRUUl9DQ19ERUNSWVBURUQgZm9y
IHByZS1kZWNyeXB0ZWQgbWVtb3J5DQo+ID4+ICAgZG1hLWJ1ZjogaGVhcHM6IHN5c3RlbTogYWRk
IHN5c3RlbV9jY19kZWNyeXB0ZWQgaGVhcCBmb3IgZXhwbGljaXRseQ0KPiA+PiAgICAgZGVjcnlw
dGVkIG1lbW9yeQ0KPiA+PiANCj4gPj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVh
cC5jIHwgMTAzICsrKysrKysrKysrKysrKysrKysrKysrKysrLS0NCj4gPj4gIGluY2x1ZGUvbGlu
dXgvZG1hLW1hcHBpbmcuaCAgICAgICAgIHwgICA2ICsrDQo+ID4+ICBpbmNsdWRlL3RyYWNlL2V2
ZW50cy9kbWEuaCAgICAgICAgICB8ICAgMyArLQ0KPiA+PiAga2VybmVsL2RtYS9kaXJlY3QuaCAg
ICAgICAgICAgICAgICAgfCAgMTQgKysrLQ0KPiA+PiAgNCBmaWxlcyBjaGFuZ2VkLCAxMTcgaW5z
ZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4gPj4gDQo+ID4+IC0tIA0KPiA+PiAyLjUxLjEN
Cj4gPj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
