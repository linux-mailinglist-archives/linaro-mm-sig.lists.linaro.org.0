Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOb5I8IK4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 591B5411767
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6072540AA7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:13:53 +0000 (UTC)
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	by lists.linaro.org (Postfix) with ESMTPS id E45E93F7B8
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Dec 2025 21:23:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=KUgiaLIa;
	spf=pass (lists.linaro.org: domain of 21cnbao@gmail.com designates 209.85.210.181 as permitted sender) smtp.mailfrom=21cnbao@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7ade456b6abso4493451b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Dec 2025 13:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766525028; x=1767129828; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aUOtxvoS/dJ0bosqqi9uYzrSZp+RubGpXgIfU8VaOC0=;
        b=KUgiaLIa0iHBgz9Hkpm9K5DxoabptSj4bHhO2zHCimVMDhGJn9HHfdVErJt/0STfB/
         m3pVBcwDqCB/uxuxXhzdgR6fZDMv4jxl8tbAJDA0niS/acrtf8FWiDFg95VLE7cZpFlx
         GNUmYjDk3b3fiCrufokIWYYByxCLVsWJ3JTOVIvYEVswMRY+UmOsnPW4jB8FiZH6xm80
         LhjbDVFq2biMRMNK8Hmg39oeHltA5K4oyv+gXBrrtanBtSaGXOos/0KXyYxprEO2jty8
         BEyofD5IQ1YHoiJndtMFHl7FiXyEBDYmFJgJaNMsPPhn0230v7uqCHsmLIFXZKuTGlhQ
         ThFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766525028; x=1767129828;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aUOtxvoS/dJ0bosqqi9uYzrSZp+RubGpXgIfU8VaOC0=;
        b=QBMxkQWN8fzRDbXTmZhoJnIDTjJW4QJVwRb/s7shyHRsVHSbMdQdfoMaPQSIkOW08t
         Byf53CJpFB24JvO3jVS9sQ9JpeVmaGAyXuMomakljDeWZTFfSPtlbMsPKSeNuCvtqkFt
         P1CUORN3qKvvttxfKOg3Eb2cyHcYVpFhMBWAFgYqCBSlyolOcMGgnPAPRThulflgHcXh
         K4vLaESCX717Gp25QETPBFTfQafS90gSRrZA854DxagPhKusaHh6RcxpxBHxXn/GMiyx
         H3TI2rSuVAlYKZnMai16mgk9n1r3HtJfL1aW0eTPAqVGYn+dk4kKEFw77/lSJVf/8k3Q
         ROww==
X-Forwarded-Encrypted: i=1; AJvYcCXlfTCfUYZcq5CdPeURUT/HYJGkUUPHWUj97fxfLjVCC9leZz2HjfFySBdN2UvsSXm7ecFYnF3GWvQFI/xB@lists.linaro.org
X-Gm-Message-State: AOJu0YyOfsdm0JHT4z6U38D/zP+pG+qVEAs1ZkqQGsNsJypdau2L+D3a
	pwImKBB3IuQ2Mm+l8DDDWYuGHhd8IpEcJTZCaq1UzzQtyk+nlNaoNdN8
X-Gm-Gg: AY/fxX7ynsF307utBOzlOaO1HIVix5SeDd8qJL0tFESPD8Gk5lbr1zx9Q9wkG1/5+XL
	a4lRFVYacYOBu6isGL6XW6VOnNJNzgKz9EeDp4pdxfmotyhIxjSFbyqitBtWyUpqAMyxiEz9+me
	JTc13wt4tUCgCP0khQB/sCqQKtMdwpKxBcbadgIrn+nIEZ58I5D/zUje6mLf84NM0Sc7lY3qZzw
	Bkf4EhArXcGxAoR1ccQoHSTeBhTw9bktXiksHI3Xg29xouPxbrwZJNTtPSccYeX3+shV9LHTEIx
	99ylq94LAyKnz+znZECdItTIfCNnkv8USr9jFaROWyVzXveEXnT54BozzJsyD4ieEciiZr8f+VA
	kNcS92JaDyonoOr8jA2BwFEC/iw9CVvf5oohsSBjO5+ON/4B726G2aXEIu3xsAaOODOy1G63GrL
	BTbJ1zhLvCXn/Gd+Wna5bFtJA=
X-Google-Smtp-Source: AGHT+IFjl4NYgeswg6t6gVHpQmyKXq6Zs/y+ycrSPrseIyz6yvUumVrAY0eo9AqIFMVJD/juZ07wKw==
X-Received: by 2002:a05:6a00:3017:b0:781:1f28:eadd with SMTP id d2e1a72fcca58-7ff646f8f08mr13731625b3a.20.1766525027718;
        Tue, 23 Dec 2025 13:23:47 -0800 (PST)
Received: from barry-desktop.hub ([47.72.129.29])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e48cffesm14433009b3a.49.2025.12.23.13.23.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 13:23:45 -0800 (PST)
From: Barry Song <21cnbao@gmail.com>
To: urezki@gmail.com
Date: Wed, 24 Dec 2025 10:23:34 +1300
Message-ID: <20251223212336.36249-1-21cnbao@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <aUlC6N1jmDbMDPc5@milan>
References: <aUlC6N1jmDbMDPc5@milan>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: 21cnbao@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Q3FZYL7TO6Z27YRU2M5YPXZGQ4ASJEMH
X-Message-ID-Hash: Q3FZYL7TO6Z27YRU2M5YPXZGQ4ASJEMH
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:10 +0000
CC: 21cnbao@gmail.com, akpm@linux-foundation.org, david@kernel.org, dri-devel@lists.freedesktop.org, jstultz@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, mripard@kernel.org, sumit.semwal@linaro.org, v-songbaohua@oppo.com, zhengtangquan@oppo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] mm/vmalloc: map contiguous pages in batches for vmap() whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q3FZYL7TO6Z27YRU2M5YPXZGQ4ASJEMH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[2730];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.060];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[21cnbao@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,linux-foundation.org,kernel.org,lists.freedesktop.org,google.com,lists.linaro.org,vger.kernel.org,kvack.org,linaro.org,oppo.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 591B5411767
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiA+IMKgLyoNCj4gPiDCoCAqIHZtYXBfcGFnZXNfcmFuZ2Vfbm9mbHVzaCBpcyBzaW1pbGFyIHRv
IHZtYXBfcGFnZXNfcmFuZ2UsIGJ1dCBkb2VzIG5vdA0KPiA+IMKgICogZmx1c2ggY2FjaGVzLg0K
PiA+IEBAIC02NTgsMjAgKzY3MiwzNSBAQCBpbnQgX192bWFwX3BhZ2VzX3JhbmdlX25vZmx1c2go
dW5zaWduZWQgbG9uZyBhZGRyLCB1bnNpZ25lZCBsb25nIGVuZCwNCj4gPg0KPiA+IMKgIMKgIMKg
IFdBUk5fT04ocGFnZV9zaGlmdCA8IFBBR0VfU0hJRlQpOw0KPiA+DQo+ID4gKyDCoCDCoCAvKg0K
PiA+ICsgwqAgwqAgwqAqIEZvciB2bWFwKCksIHVzZXJzIG1heSBhbGxvY2F0ZSBwYWdlcyBmcm9t
IGhpZ2ggb3JkZXJzIGRvd24gdG8NCj4gPiArIMKgIMKgIMKgKiBvcmRlciAwLCB3aGlsZSBhbHdh
eXMgdXNpbmcgUEFHRV9TSElGVCBhcyB0aGUgcGFnZV9zaGlmdC4NCj4gPiArIMKgIMKgIMKgKiBX
ZSBmaXJzdCBjaGVjayB3aGV0aGVyIHRoZSBpbml0aWFsIHBhZ2UgaXMgYSBjb21wb3VuZCBwYWdl
LiBJZiBzbywNCj4gPiArIMKgIMKgIMKgKiB0aGVyZSBtYXkgYmUgYW4gb3Bwb3J0dW5pdHkgdG8g
YmF0Y2ggbXVsdGlwbGUgcGFnZXMgdG9nZXRoZXIuDQo+ID4gKyDCoCDCoCDCoCovDQo+ID4gwqAg
wqAgwqAgaWYgKCFJU19FTkFCTEVEKENPTkZJR19IQVZFX0FSQ0hfSFVHRV9WTUFMTE9DKSB8fA0K
PiA+IC0gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgcGFnZV9zaGlmdCA9PSBQQUdFX1NI
SUZUKQ0KPiA+ICsgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgKHBhZ2Vfc2hpZnQgPT0g
UEFHRV9TSElGVCAmJiAhUGFnZUNvbXBvdW5kKHBhZ2VzWzBdKSkpDQo+ID4gwqAgwqAgwqAgwqAg
wqAgwqAgwqAgcmV0dXJuIHZtYXBfc21hbGxfcGFnZXNfcmFuZ2Vfbm9mbHVzaChhZGRyLCBlbmQs
IHByb3QsIHBhZ2VzKTsNCj4gSG0uLiBJZiBmaXJzdCBmZXcgcGFnZXMgYXJlIG9yZGVyLTAgYW5k
IHRoZSByZXN0IGFyZSBjb21wb3VuZA0KPiB0aGVuIHdlIGRvIG5vdGhpbmcuDQoNCk5vdyB0aGUg
ZG1hLWJ1ZiBpcyBhbGxvY2F0ZWQgaW4gZGVzY2VuZGluZyBvcmRlci4gSWYgcGFnZTANCmlzIG5v
dCBodWdlLCBwYWdlMSB3aWxsIG5vdCBiZSBlaXRoZXIuIEhvd2V2ZXIsIEkgYWdyZWUgdGhhdA0K
d2UgbWF5IGV4dGVuZCBzdXBwb3J0IGZvciB0aGlzIGNhc2UuDQoNCj4NCj4gPg0KPiA+IC0gwqAg
wqAgZm9yIChpID0gMDsgaSA8IG5yOyBpICs9IDFVIDw8IChwYWdlX3NoaWZ0IC0gUEFHRV9TSElG
VCkpIHsNCj4gPiArIMKgIMKgIGZvciAoaSA9IDA7IGkgPCBucjsgKSB7DQo+ID4gKyDCoCDCoCDC
oCDCoCDCoCDCoCB1bnNpZ25lZCBpbnQgc2hpZnQgPSBwYWdlX3NoaWZ0Ow0KPiA+IMKgIMKgIMKg
IMKgIMKgIMKgIMKgIGludCBlcnI7DQo+ID4NCj4gPiAtIMKgIMKgIMKgIMKgIMKgIMKgIGVyciA9
IHZtYXBfcmFuZ2Vfbm9mbHVzaChhZGRyLCBhZGRyICsgKDFVTCA8PCBwYWdlX3NoaWZ0KSwNCj4g
PiArIMKgIMKgIMKgIMKgIMKgIMKgIC8qDQo+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCDCoCogRm9y
IHZtYXAoKSBjYXNlcywgcGFnZV9zaGlmdCBpcyBhbHdheXMgUEFHRV9TSElGVCwgZXZlbg0KPiA+
ICsgwqAgwqAgwqAgwqAgwqAgwqAgwqAqIGlmIHRoZSBwYWdlcyBhcmUgcGh5c2ljYWxseSBjb250
aWd1b3VzLCB0aGV5IG1heSBzdGlsbA0KPiA+ICsgwqAgwqAgwqAgwqAgwqAgwqAgwqAqIGJlIG1h
cHBlZCBpbiBhIGJhdGNoLg0KPiA+ICsgwqAgwqAgwqAgwqAgwqAgwqAgwqAqLw0KPiA+ICsgwqAg
wqAgwqAgwqAgwqAgwqAgaWYgKHBhZ2Vfc2hpZnQgPT0gUEFHRV9TSElGVCkNCj4gPiArIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHNoaWZ0ICs9IGdldF92bWFwX2JhdGNoX29yZGVyKHBh
Z2VzLCBuciAtIGksIGkpOw0KPiA+ICsgwqAgwqAgwqAgwqAgwqAgwqAgZXJyID0gdm1hcF9yYW5n
ZV9ub2ZsdXNoKGFkZHIsIGFkZHIgKyAoMVVMIDw8IHNoaWZ0KSwNCj4gPiDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBwYWdlX3RvX3BoeXMo
cGFnZXNbaV0pLCBwcm90LA0KPiA+IC0gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgcGFnZV9zaGlmdCk7DQo+ID4gKyDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBzaGlmdCk7DQo+ID4gwqAgwqAg
wqAgwqAgwqAgwqAgwqAgaWYgKGVycikNCj4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCByZXR1cm4gZXJyOw0KPiA+DQo+ID4gLSDCoCDCoCDCoCDCoCDCoCDCoCBhZGRyICs9IDFV
TCA8PCBwYWdlX3NoaWZ0Ow0KPiA+ICsgwqAgwqAgwqAgwqAgwqAgwqAgYWRkciArPSAxVUwgwqA8
PCBzaGlmdDsNCj4gPiArIMKgIMKgIMKgIMKgIMKgIMKgIGkgKz0gMVUgPDwgc2hpZnQ7DQo+ID4g
wqAgwqAgwqAgfQ0KPiA+DQo+ID4gwqAgwqAgwqAgcmV0dXJuIDA7DQo+ID4NCj4gPiBEb2VzIHRo
aXMgbG9vayBjbGVhcmVyPw0KPiA+DQo+IFRoZSBjb25jZXJuIGlzIHdlIG1peCBpdCB3aXRoIGEg
aHVnZSBwYWdlIG1hcHBpbmcgcGF0aC4gSWYgd2Ugd2FudCB0byBiYXRjaA0KPiB2LW1hcHBpbmcg
Zm9yIHBhZ2Vfc2hpZnQgPT0gUEFHRV9TSElGVCBjYXNlLCB3aGVyZSAicGFnZXMiIGFycmF5IG1h
eSBjb250YWluDQo+IGNvbXBvdW5kIHBhZ2VzKGZvbGlvKShjb3JuZXIgY2FzZSB0byBtZSksIGkg
dGhpbmsgd2Ugc2hvdWxkIHNwbGl0IGl0Lg0KDQpJIGFncmVlIHRoaXMgbWlnaHQgbm90IGJlIGNv
bW1vbiB3aGVuIHRoZSB2bWFwIGJ1ZmZlciBpcyBvbmx5DQp1c2VkIGJ5IHRoZSBDUFUuIEhvd2V2
ZXIsIGZvciBHUFVzLCBOUFVzLCBhbmQgc2ltaWxhciBkZXZpY2VzLA0KYmVuZWZpdGluZyBmcm9t
IGxhcmdlciBtYXBwaW5ncyBtYXkgYmUgcXVpdGUgY29tbW9uLg0KDQpEb2VzIHRoZSBjb2RlIGJl
bG93LCB3aGljaCBtb3ZlcyBiYXRjaGVkIG1hcHBpbmcgdG8gdm1hcCgpLA0KYWRkcmVzcyBib3Ro
IG9mIHlvdXIgY29uY2VybnM/DQoNCmRpZmYgLS1naXQgYS9tbS92bWFsbG9jLmMgYi9tbS92bWFs
bG9jLmMNCmluZGV4IGVjYmFjOTAwYzM1Zi4uNzgyZjJlYWM4YTYzIDEwMDY0NA0KLS0tIGEvbW0v
dm1hbGxvYy5jDQorKysgYi9tbS92bWFsbG9jLmMNCkBAIC0zNTAxLDYgKzM1MDEsMjAgQEAgdm9p
ZCB2dW5tYXAoY29uc3Qgdm9pZCAqYWRkcikNCiB9DQogRVhQT1JUX1NZTUJPTCh2dW5tYXApOw0K
IA0KK3N0YXRpYyBpbmxpbmUgaW50IGdldF92bWFwX2JhdGNoX29yZGVyKHN0cnVjdCBwYWdlICoq
cGFnZXMsDQorCQl1bnNpZ25lZCBpbnQgbWF4X3N0ZXBzLCB1bnNpZ25lZCBpbnQgaWR4KQ0KK3sN
CisJdW5zaWduZWQgaW50IG5yX3BhZ2VzOw0KKw0KKwlucl9wYWdlcyA9IGNvbXBvdW5kX25yKHBh
Z2VzW2lkeF0pOw0KKwlpZiAobnJfcGFnZXMgPT0gMSB8fCBtYXhfc3RlcHMgPCBucl9wYWdlcykN
CisJCXJldHVybiAwOw0KKw0KKwlpZiAobnVtX3BhZ2VzX2NvbnRpZ3VvdXMoJnBhZ2VzW2lkeF0s
IG5yX3BhZ2VzKSA9PSBucl9wYWdlcykNCisJCXJldHVybiBjb21wb3VuZF9vcmRlcihwYWdlc1tp
ZHhdKTsNCisJcmV0dXJuIDA7DQorfQ0KKw0KIC8qKg0KICAqIHZtYXAgLSBtYXAgYW4gYXJyYXkg
b2YgcGFnZXMgaW50byB2aXJ0dWFsbHkgY29udGlndW91cyBzcGFjZQ0KICAqIEBwYWdlczogYXJy
YXkgb2YgcGFnZSBwb2ludGVycw0KQEAgLTM1NDQsMTAgKzM1NTgsMjEgQEAgdm9pZCAqdm1hcChz
dHJ1Y3QgcGFnZSAqKnBhZ2VzLCB1bnNpZ25lZCBpbnQgY291bnQsDQogCQlyZXR1cm4gTlVMTDsN
CiANCiAJYWRkciA9ICh1bnNpZ25lZCBsb25nKWFyZWEtPmFkZHI7DQotCWlmICh2bWFwX3BhZ2Vz
X3JhbmdlKGFkZHIsIGFkZHIgKyBzaXplLCBwZ3Byb3RfbngocHJvdCksDQotCQkJCXBhZ2VzLCBQ
QUdFX1NISUZUKSA8IDApIHsNCi0JCXZ1bm1hcChhcmVhLT5hZGRyKTsNCi0JCXJldHVybiBOVUxM
Ow0KKwlmb3IgKHVuc2lnbmVkIGludCBpID0gMDsgaSA8IGNvdW50OyApIHsNCisJCXVuc2lnbmVk
IGludCBzaGlmdCA9IFBBR0VfU0hJRlQ7DQorCQlpbnQgZXJyOw0KKw0KKwkJc2hpZnQgKz0gZ2V0
X3ZtYXBfYmF0Y2hfb3JkZXIocGFnZXMsIGNvdW50IC0gaSwgaSk7DQorCQllcnIgPSB2bWFwX3Jh
bmdlX25vZmx1c2goYWRkciwgYWRkciArICgxVUwgPDwgc2hpZnQpLA0KKwkJCQlwYWdlX3RvX3Bo
eXMocGFnZXNbaV0pLCBwZ3Byb3RfbngocHJvdCksDQorCQkJCXNoaWZ0KTsNCisJCWlmIChlcnIp
IHsNCisJCQl2dW5tYXAoYXJlYS0+YWRkcik7DQorCQkJcmV0dXJuIE5VTEw7DQorCQl9DQorDQor
CQlhZGRyICs9IDFVTCAgPDwgc2hpZnQ7DQorCQlpICs9IDFVIDw8IHNoaWZ0Ow0KIAl9DQogDQog
CWlmIChmbGFncyAmIFZNX01BUF9QVVRfUEFHRVMpIHsNCi0tIA0KMi40OC4xDQoNClRoYW5rcw0K
QmFycnkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
