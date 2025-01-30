Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A632A23160
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jan 2025 17:00:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A86BE44A3E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jan 2025 16:00:13 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by lists.linaro.org (Postfix) with ESMTPS id CDDDE3F4B3
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jan 2025 15:59:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=zFz3NDoK;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.222.174) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7b6f0afda3fso115278785a.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jan 2025 07:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1738252798; x=1738857598; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Vrukcyab91NQAAPHSNd07R2nM2xtss7X+LvbFgz2NCI=;
        b=zFz3NDoKg6NmpvnLimu7DBN6dXIVygJtHS7hn7UWRMhZhBdLe21POkLsumKn1iR2sZ
         lJtn1gCcn04dYdOkZkNgQKr1mW3yL4ztRp5v9CZxiCTe/N7biQxwBFkxSJC8HjkYJ0fD
         4AOaOkw5zTx3thwhEISn67RjXddORjlWXr63GxMDhMVCLrqagAF95hFje5wXviCPDZlf
         D6MBpRfjdexFtNISbN943bx9MxEXg6a7Jq0B1VzuHErpFXCm35/isvNFkQvgxfsV7180
         99//+s3MSAFQjRgr+CSqLNjCXa8im4FNaXxuKPTaXrs8T2WykjMl9ki/qEPLL/8zwfPw
         jnug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738252798; x=1738857598;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vrukcyab91NQAAPHSNd07R2nM2xtss7X+LvbFgz2NCI=;
        b=VWnnc+3MGBnvlf8z5H6111NRETXMWPP7P8FwnaLo63oH2ca3Ud0lS4y90RTPPc+lPo
         Na9UZ+av4yopokya7GtMfcJHOoyLfhGDdBtIQ6tAC4qtm+Q86Ju5wrcYUNRN7pWkK5Xu
         9inZQ8cOAYKlRcF7LTIuFa57XDkX2odpPxXP2PS2eh5PsoPGgkQxdaCQVLgIAVpA5sc0
         VVrde1wdDtMHcPfCesgOm4xfiIybHltdyU6yMsuSxysZT3XYV6WDkQ7gTBxxSy5qNqPm
         Z/J7TcxfUOfl5+nv0aQgwd9I9rrgc9gLfW609lvQzPI8whnP500vbEucarltUhY3AGf/
         kMTw==
X-Forwarded-Encrypted: i=1; AJvYcCUJOq3AUlh/b7OTz5cjbeNE3sayzwhXTjq6eRcdMevdG/6cyGL14EYaaaVl61iNGfa5yGj1aFOAVyXFnoSL@lists.linaro.org
X-Gm-Message-State: AOJu0YyJnGGEigDbtflRi7yDGxfVjAKDPv7k8vUequHLeF/CFva7C/9l
	6lvI6PdJ9U/znEjN5yZexsgPWNqKvbIs6iOZ+xJ4Ihvc1ixnF5uMroKtRQ5kEhg=
X-Gm-Gg: ASbGncu4DSs2mEoWHPjxAJtlvF/V1Gyh0yuXspO/9rAiqZrJ4j/7imDxL/QagVR+bMl
	ZW/CD+314CHWnj8NN0isCeLsWONd1JgfVnYjyicxnACfD7FesGhJNufnoIo5DvcvaWPv08lydeT
	BGNXzLzcOvkABnvnm5j8Xglt5sp65PkCarL1c/Sc8EC2e+fmQkwYHt5UZ+ANNRdsuMutk9sj+c0
	dAmc6t6HZD44nHWFsgzaeuHv4yoZXD0z8wIoQTaoownNPGq526DciM02ZiEZ0bC+0KllzIa+xoA
	KvXA8h2zb87hSJYn
X-Google-Smtp-Source: AGHT+IHjdyr1ZGxcyMCqDyCVkI8EVFcDwH70UC+E+hsL30A1qjTpY04odV1a3HSLhMUSwyh/u08bDw==
X-Received: by 2002:a05:620a:44ca:b0:7b7:342:a0a5 with SMTP id af79cd13be357-7bffcda883bmr1361614185a.55.1738252798246;
        Thu, 30 Jan 2025 07:59:58 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:e976::7a9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c00a90d14asm85504285a.104.2025.01.30.07.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 07:59:57 -0800 (PST)
Message-ID: <1a73c3acee34a86010ecd25d76958bca4f16d164.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Maxime Ripard <mripard@kernel.org>, Florent Tomasin
	 <florent.tomasin@arm.com>
Date: Thu, 30 Jan 2025 10:59:56 -0500
In-Reply-To: <3ykaewmjjwkp3y2f3gf5jvqketicd4p2xqyajqtfnsxci36qlm@twidtyj2kgbw>
References: <cover.1738228114.git.florent.tomasin@arm.com>
	 <3ykaewmjjwkp3y2f3gf5jvqketicd4p2xqyajqtfnsxci36qlm@twidtyj2kgbw>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CDDDE3F4B3
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,google.com,amd.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.174:from];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.222.174:from];
	DNSWL_BLOCKED(0.00)[2606:6d00:11:e976::7a9:received,209.85.222.174:from];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: 4HYL5SFPQYBGNPMT2USNTQOZBAM4X6K5
X-Message-ID-Hash: 4HYL5SFPQYBGNPMT2USNTQOZBAM4X6K5
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm
 -kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/5] drm/panthor: Protected mode support for Mali CSF GPUs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4HYL5SFPQYBGNPMT2USNTQOZBAM4X6K5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgamV1ZGkgMzAgamFudmllciAyMDI1IMOgIDE0OjQ2ICswMTAwLCBNYXhpbWUgUmlwYXJkIGEg
w6ljcml0wqA6DQo+IEhpLA0KPiANCj4gSSBzdGFydGVkIHRvIHJldmlldyBpdCwgYnV0IGl0J3Mg
cHJvYmFibHkgYmVzdCB0byBkaXNjdXNzIGl0IGhlcmUuDQo+IA0KPiBPbiBUaHUsIEphbiAzMCwg
MjAyNSBhdCAwMTowODo1NlBNICswMDAwLCBGbG9yZW50IFRvbWFzaW4gd3JvdGU6DQo+ID4gSGks
DQo+ID4gDQo+ID4gVGhpcyBpcyBhIHBhdGNoIHNlcmllcyBjb3ZlcmluZyB0aGUgc3VwcG9ydCBm
b3IgcHJvdGVjdGVkIG1vZGUgZXhlY3V0aW9uIGluDQo+ID4gTWFsaSBQYW50aG9yIENTRiBrZXJu
ZWwgZHJpdmVyLg0KPiA+IA0KPiA+IFRoZSBNYWxpIENTRiBHUFVzIGNvbWUgd2l0aCB0aGUgc3Vw
cG9ydCBmb3IgcHJvdGVjdGVkIG1vZGUgZXhlY3V0aW9uIGF0IHRoZQ0KPiA+IEhXIGxldmVsLiBU
aGlzIGZlYXR1cmUgcmVxdWlyZXMgdHdvIG1haW4gY2hhbmdlcyBpbiB0aGUga2VybmVsIGRyaXZl
cjoNCj4gPiANCj4gPiAxKSBDb25maWd1cmUgdGhlIEdQVSB3aXRoIGEgcHJvdGVjdGVkIGJ1ZmZl
ci4gVGhlIHN5c3RlbSBtdXN0IHByb3ZpZGUgYSBETUENCj4gPiAgICBoZWFwIGZyb20gd2hpY2gg
dGhlIGRyaXZlciBjYW4gYWxsb2NhdGUgYSBwcm90ZWN0ZWQgYnVmZmVyLg0KPiA+ICAgIEl0IGNh
biBiZSBhIGNhcnZlZC1vdXQgbWVtb3J5IG9yIGR5bmFtaWNhbGx5IGFsbG9jYXRlZCBwcm90ZWN0
ZWQgbWVtb3J5IHJlZ2lvbi4NCj4gPiAgICBTb21lIHN5c3RlbSBpbmNsdWRlcyBhIHRydXN0ZWQg
Rlcgd2hpY2ggaXMgaW4gY2hhcmdlIG9mIHRoZSBwcm90ZWN0ZWQgbWVtb3J5Lg0KPiA+ICAgIFNp
bmNlIHRoaXMgcHJvYmxlbSBpcyBpbnRlZ3JhdGlvbiBzcGVjaWZpYywgdGhlIE1hbGkgUGFudGhv
ciBDU0Yga2VybmVsDQo+ID4gICAgZHJpdmVyIG11c3QgaW1wb3J0IHRoZSBwcm90ZWN0ZWQgbWVt
b3J5IGZyb20gYSBkZXZpY2Ugc3BlY2lmaWMgZXhwb3J0ZXIuDQo+IA0KPiBXaHkgZG8geW91IG5l
ZWQgYSBoZWFwIGZvciBpdCBpbiB0aGUgZmlyc3QgcGxhY2U/IE15IHVuZGVyc3RhbmRpbmcgb2YN
Cj4geW91ciBzZXJpZXMgaXMgdGhhdCB5b3UgaGF2ZSBhIGNhcnZlZCBvdXQgbWVtb3J5IHJlZ2lv
biBzb21ld2hlcmUsIGFuZA0KPiB5b3Ugd2FudCB0byBhbGxvY2F0ZSBmcm9tIHRoYXQgY2FydmVk
IG91dCBtZW1vcnkgcmVnaW9uIHlvdXIgYnVmZmVycy4NCj4gDQo+IEhvdyBpcyB0aGF0IGFueSBk
aWZmZXJlbnQgZnJvbSB1c2luZyBhIHJlc2VydmVkLW1lbW9yeSByZWdpb24sIGFkZGluZw0KPiB0
aGUgcmVzZXJ2ZWQtbWVtb3J5IHByb3BlcnR5IHRvIHRoZSBHUFUgZGV2aWNlIGFuZCBkb2luZyBh
bGwgeW91cg0KPiBhbGxvY2F0aW9uIHRocm91Z2ggdGhlIHVzdWFsIGRtYV9hbGxvY18qIEFQST8N
Cg0KSG93IGRvIHlvdSB0aGVuIG11bHRpcGxleCB0aGlzIHJlZ2lvbiBzbyBpdCBjYW4gYmUgc2hh
cmVkIGJldHdlZW4NCkdQVS9DYW1lcmEvRGlzcGxheS9Db2RlYyBkcml2ZXJzIGFuZCBhbHNvIHVz
ZXJzcGFjZSA/IEFsc28sIGhvdyB0aGUgc2VjdXJlDQptZW1vcnkgaXMgYWxsb2N0ZWQgLyBvYnRh
aW5lZCBpcyBhIHByb2Nlc3MgdGhhdCBjYW4gdmFyeSBhIGxvdCBiZXR3ZWVuIFNvQywgc28NCmlt
cGxlbWVudGF0aW9uIGRldGFpbHMgYXNzdW1wdGlvbiBzaG91bGQgbm90IGJlIGNvZGVkIGluIHRo
ZSBkcml2ZXIuDQoNCk5pY29sYXMNCg0KPiANCj4gT3IgZG8geW91IGV4cGVjdCB0byBoYXZlIGFu
b3RoZXIgZG1hLWJ1ZiBoZWFwIHRoYXQgd291bGQgY2FsbCBpbnRvIHRoZQ0KPiBmaXJtd2FyZSB0
byBwZXJmb3JtIHRoZSBhbGxvY2F0aW9ucz8NCj4gDQo+IFRoZSBzZW1hbnRpY3Mgb2YgdGhlIENN
QSBoZWFwIGFsbG9jYXRpb25zIGlzIGEgY29uY2VybiB0b28uDQo+IA0KPiBBbm90aGVyIHF1ZXN0
aW9uIGlzIGhvdyB3b3VsZCB5b3UgZXhwZWN0IHNvbWV0aGluZyBsaWtlIGEgc2VjdXJlDQo+IHZp
ZGVvLXBsYXliYWNrIHBpcGVsaW5lIHRvIG9wZXJhdGUgd2l0aCB0aGF0IGtpbmQgb2YgaW50ZXJm
YWNlLiBBc3N1bWluZw0KPiB5b3UgaGF2ZSBhIHNlY3VyZSBjb2RlYywgeW91IHdvdWxkIGxpa2Vs
eSBnZXQgdGhhdCBwcm90ZWN0ZWQgYnVmZmVyIGZyb20NCj4gdGhlIGNvZGVjLCByaWdodD8gU28g
dGhlIG1vc3QgbGlrZWx5IHNjZW5hcmlvIHdvdWxkIGJlIHRvIHRoZW4gaW1wb3J0DQo+IHRoYXQg
ZG1hLWJ1ZiBpbnRvIHRoZSBHUFUgZHJpdmVyLCBidXQgbm90IGFsbG9jYXRlIHRoZSBidWZmZXIg
ZnJvbSBpdC4NCj4gDQo+IE92ZXJhbGwsIEkgdGhpbmsgYSBiZXR0ZXIgYWJzdHJhY3Rpb24gd291
bGQgYmUgdG8gaGF2ZSBhIGhlYXAgaW5kZWVkIHRvDQo+IGFsbG9jYXRlIHlvdXIgcHJvdGVjdGVk
IGJ1ZmZlcnMgZnJvbSwgYW5kIHRoZW4gaW1wb3J0IHRoZW0gaW4gdGhlDQo+IGRldmljZXMgdGhh
dCBuZWVkIHRoZW0uIFRoZSByZXNwb25zaWJpbGl0eSB3b3VsZCBiZSBvbiB0aGUgdXNlcnNwYWNl
IHRvDQo+IGRvIHNvLCBidXQgaXQgYWxyZWFkeSBraW5kIG9mIGRvZXMgd2l0aCB5b3VyIGRlc2ln
biBhbnl3YXkuDQo+IA0KPiBNYXhpbWUNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
