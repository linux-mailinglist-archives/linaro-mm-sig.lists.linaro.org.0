Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C848499AFC9
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 12 Oct 2024 02:53:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84F0B446DB
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 12 Oct 2024 00:53:26 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id A487D3F33B
	for <linaro-mm-sig@lists.linaro.org>; Sat, 12 Oct 2024 00:53:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=ceFuEyGJ;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.218.48 as permitted sender) smtp.mailfrom=jstultz@google.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a997736106fso330641466b.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Oct 2024 17:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1728694388; x=1729299188; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fX8qbIl6yI0pe7Z7Ey3xMlNXl8QKMUUNG2vGHvdrAqQ=;
        b=ceFuEyGJCKZ4i1pOR2pt/A5ODWvjrIE0GZUPmIfNlFlaQqTJVTIugGKMe/CvUsBmvL
         Ci8bI2ezuVYzVyyXVJ8bgjUdT2/O/Dyv+7M6DEJ/EVxtzi0BGODBIY77jfC5y5FIkwex
         53hCjd03iM9LO6RU8eW7A8GjLskHUiQubkLRX4EAwZFrHLLdph7FgMk8M+zIpOEmDy3A
         JSKesiCsV1b+FafQWjfilCRp7uco/NJslKMN6b0G1dDVocXbTiU1lX7WQoN9TOlAXer1
         9HCiqtS2jOc3xGG1l00h1ejvpHJhDFa4rj/Jv0HoKsv7DfMQ89ym4a5hmyDCTaAd0HjP
         tYHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728694388; x=1729299188;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fX8qbIl6yI0pe7Z7Ey3xMlNXl8QKMUUNG2vGHvdrAqQ=;
        b=rcM61we7W49RqWn5CZ/wvuRDQd9yTZfhs/O+ovlO3TvJyV51xbGzzpJqj745ZReJpK
         cS8e3PKEuWiUX1pkq8fNXq9bxSvFkEDHLLtNenxKo4KoiM6/H3b7muKspbY/N7vVRCUB
         CfJHNDLw52JV7W9Eq2A/NTxIcsDi0DO0uCrTi54IVN/4Pt6zhefTmb1CeqtZaclGnJak
         dT3uHCXbRuHyuJkNG3LyWK3aqqLYZuxc+y+P7fA2Mdesmtly2f3D2sE0USQfJmsYYg1A
         fmeUoqzrTClMrjwKu5DgDukJMxEg/ykUYGGVZDGgk7DcAynDF5r8WtrnqWcyVmhivUyt
         9jVw==
X-Forwarded-Encrypted: i=1; AJvYcCWZADSiOKy2iPaxo5dI+ccWJ6dagH5kD2rtPJv6sE9TlNI2M6awDfa+2eKcZ3vdhjtNTdq6PBqE2tyTedF1@lists.linaro.org
X-Gm-Message-State: AOJu0YzxXMsUZfWlryfyILqFjISQn70sNExpvj5uyUNCbw2bSJujbOFA
	o2f11rtc5yZtier7Yyi/UhBzXnZSL8HEvUgQyJHBLLzTnVJ+Y9/eBKQdUgzYSFKV5AdANyQuvB0
	KI51WWZTRIIr7bZvDNzKRoWatuxvJTyMX6xo=
X-Google-Smtp-Source: AGHT+IHcGOMyjbUnqPtl1UM87h3YL87dZ2gYOIUO6wGlw/CCJ1mjQPIwZZ9PoqGjsv+QiY4iVj7yxWbnA0AL382mrFA=
X-Received: by 2002:a17:907:ea3:b0:a99:4e8c:e5c9 with SMTP id
 a640c23a62f3a-a99b937b7famr358020366b.20.1728694388307; Fri, 11 Oct 2024
 17:53:08 -0700 (PDT)
MIME-Version: 1.0
References: <20241005180955.6523-1-quic_pintu@quicinc.com>
In-Reply-To: <20241005180955.6523-1-quic_pintu@quicinc.com>
From: John Stultz <jstultz@google.com>
Date: Fri, 11 Oct 2024 17:52:56 -0700
Message-ID: <CANDhNCpeJFn9NMQYwWT04x=HL2bUi71V6YpQG7Gg5PVVCbRfXw@mail.gmail.com>
To: Pintu Kumar <quic_pintu@quicinc.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A487D3F33B
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.48:from];
	TAGGED_RCPT(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,collabora.com,arm.com,google.com,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,perches.com,linuxfoundation.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: JROHYOTDE4BS2Z4JQERF26MWF2Z7HEZP
X-Message-ID-Hash: JROHYOTDE4BS2Z4JQERF26MWF2Z7HEZP
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, joe@perches.com, skhan@linuxfoundation.org, pintu.ping@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: fix S_IRUGO to 0444, block comments, func declaration
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JROHYOTDE4BS2Z4JQERF26MWF2Z7HEZP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU2F0LCBPY3QgNSwgMjAyNCBhdCAxMToxMOKAr0FNIFBpbnR1IEt1bWFyIDxxdWljX3BpbnR1
QHF1aWNpbmMuY29tPiB3cm90ZToNCj4NCj4gVGhlc2Ugd2FybmluZ3MvZXJyb3JzIGFyZSByZXBv
cnRlZCBieSBjaGVja3BhdGNoLg0KPiBGaXggdGhlbSB3aXRoIG1pbm9yIGNoYW5nZXMgdG8gbWFr
ZSBpdCBjbGVhbi4NCj4gTm8gb3RoZXIgZnVuY3Rpb25hbCBjaGFuZ2VzLg0KPg0KPiBXQVJOSU5H
OiBCbG9jayBjb21tZW50cyB1c2UgKiBvbiBzdWJzZXF1ZW50IGxpbmVzDQo+ICsgICAgICAgLyog
b25seSBzdXBwb3J0IGRpc2NvdmVyaW5nIHRoZSBlbmQgb2YgdGhlIGJ1ZmZlciwNCj4gKyAgICAg
ICAgICBidXQgYWxzbyBhbGxvdyBTRUVLX1NFVCB0byBtYWludGFpbiB0aGUgaWRpb21hdGljDQo+
DQo+IFdBUk5JTkc6IEJsb2NrIGNvbW1lbnRzIHVzZSBhIHRyYWlsaW5nICovIG9uIGEgc2VwYXJh
dGUgbGluZQ0KPiArICAgICAgICAgIFNFRUtfRU5EKDApLCBTRUVLX0NVUigwKSBwYXR0ZXJuICov
DQo+DQo+IFdBUk5JTkc6IEJsb2NrIGNvbW1lbnRzIHVzZSBhIHRyYWlsaW5nICovIG9uIGEgc2Vw
YXJhdGUgbGluZQ0KPiArICAgICAgICAqIGJlZm9yZSBwYXNzaW5nIHRoZSBzZ3QgYmFjayB0byB0
aGUgZXhwb3J0ZXIuICovDQo+DQo+IEVSUk9SOiAiZm9vICogYmFyIiBzaG91bGQgYmUgImZvbyAq
YmFyIg0KPiArc3RhdGljIHN0cnVjdCBzZ190YWJsZSAqIF9fbWFwX2RtYV9idWYoc3RydWN0IGRt
YV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPg0KPiBXQVJOSU5HOiBTeW1ib2xpYyBwZXJtaXNz
aW9ucyAnU19JUlVHTycgYXJlIG5vdCBwcmVmZXJyZWQuIENvbnNpZGVyIHVzaW5nIG9jdGFsIHBl
cm1pc3Npb25zICcwNDQ0Jy4NCj4gKyAgICAgICBkID0gZGVidWdmc19jcmVhdGVfZmlsZSgiYnVm
aW5mbyIsIFNfSVJVR08sIGRtYV9idWZfZGVidWdmc19kaXIsDQo+DQo+IHRvdGFsOiAxIGVycm9y
cywgNCB3YXJuaW5ncywgMTc0NiBsaW5lcyBjaGVja2VkDQo+DQo+IFNpZ25lZC1vZmYtYnk6IFBp
bnR1IEt1bWFyIDxxdWljX3BpbnR1QHF1aWNpbmMuY29tPg0KDQpMb29rcyBvayB0byBtZS4gVGhh
bmtzIGZvciBzZW5kaW5nIHRoZXNlIGNsZWFudXBzIQ0KQWNrZWQtYnk6IEpvaG4gU3R1bHR6IDxq
c3R1bHR6QGdvb2dsZS5jb20+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
