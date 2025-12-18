Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CmmK9kJ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:10:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB2441161F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:10:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 544A940690
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:10:00 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by lists.linaro.org (Postfix) with ESMTPS id 7A0C53F76F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 14:00:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=glxlXv6y;
	spf=pass (lists.linaro.org: domain of urezki@gmail.com designates 209.85.167.53 as permitted sender) smtp.mailfrom=urezki@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5957c929a5eso944542e87.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 06:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766066452; x=1766671252; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gia3XsZVU5S68keMVbCpat85CsVkLa/AQdgBIvpcJZo=;
        b=glxlXv6ypsruqKMSFqBj/euFiYyqJPBoDmydoF4qj2Szf4gjY2EjL4Xp+py+6Zx+cb
         aac1USU1xGg7+8YFkigQEO5GuaB4ha8fhSphARc7rEco8gTjjdcyJ5QRuuSNlbUBpqAj
         vmrze08Rc1ls1gI6xsaXznBfJ3MWPg2In26YsdJcOM4/xmZuvnVoNFP08DF3Ym0iFphX
         bDd//GTSh8mN1cxFlJ3tpvL1Ari/q+0QcoexGeqLObE0iskMYzKr0BUUP4zbZ14xGqYl
         yPql88diix6oVJKvA+7TLCTc2yiPtER4H6oZVMTUUkfhaD+fdec2ojUGhg6NTffnHCI3
         7+Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766066452; x=1766671252;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gia3XsZVU5S68keMVbCpat85CsVkLa/AQdgBIvpcJZo=;
        b=ktyg+nsqPGRj/HzdnEGebZ+hz3Dljt51PRQzVDQRWRy6VdP0FXl3LZJKus5ltGb+lC
         A9GSguLO6CVBfM7eAm6ChKzGUbzh8ZbmBGXxFNwHJZ6WcY5NV9umpQhioUMDkAEjYH6n
         +mHtmwkfrfb1Y6cuoEnxuCz4CcznMaQhSItpSgK6rPE3cu2gIZb/uGcN4IG+GVR5xueA
         fptU9r0H10Za4qXYBZaWyrq2ZYWdNW4Fb66XOnvUxI68c9AEaxd9g/sNcRWuBdldJ+jS
         CxztUs8taBM63iNmgaNeutnpobA8VX0DnKwjiMibK4uW5EqB2xwc+S9KkUqH+Wspce2u
         oh2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXdpDBCcCHPECOptJTBWodvg6BKLUy2htYMpeLehOvX6e1Ri5puzShfMEAq984ksFvlAJWnTlo/Jp6j7is7@lists.linaro.org
X-Gm-Message-State: AOJu0YwZwE3qqHeB0D5Zc7/7kGIYMSBeKCxvJW2r9WaJ2vvcRgStUllF
	bVTsFtpM5uBfgCzgbszya+KmTAhOhCEZ9++RRUDzFQUBa7LrVlvXe5oQ
X-Gm-Gg: AY/fxX6TWRoJ/WKP45lkidYxslMIa8h2VUuQ+iFe1rCMjEsq6DVIkRKEy4QEoXy6rYl
	N/roihRukAFw/3lbyxmbyT+ZIaWo7WUi5xyvWxH2lFmkNnd6/ZptSS8SoBHrhsEA+p0jE5Y1HY7
	mIuq9pIC3fPma7Fw/EnD7AKmHEMwY/3v36mXaH5VZk7p9nc3MHoIQLx9WcGAB21WlNbxJ8hj960
	ssQpTj6d2phIv7ZA6P1UAwa8itAk50R+dFQbEuM7ko1gb3f3oA6WQ6WV4A9Czx7qqAsLRGFS0ko
	Qp8ZUWTKMuF/u7iBUjmla0ZIV/Ro0XKLsphLERmKwbbdaz9vAZF0EVRM6SZTPOzVbU9v6w4EsmL
	OeWPHS9xo8Lcb7EbZ8waI+/khv5T6glahpnenKWlIGJPzYbuwNo+25p7eHhopvtk=
X-Google-Smtp-Source: AGHT+IEl4Wys7Q4SsRgNG2E+WQ1GNUkskpWJrAarDBASWdaJXnRcMQIARLijn7oPvUMXkjAijza9bw==
X-Received: by 2002:a05:6512:3ba5:b0:597:d702:58e5 with SMTP id 2adb3069b0e04-598faa8408amr8438081e87.39.1766066451811;
        Thu, 18 Dec 2025 06:00:51 -0800 (PST)
Received: from milan ([2001:9b1:d5a0:a500::24b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a132d4109sm1108082e87.41.2025.12.18.06.00.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 06:00:51 -0800 (PST)
From: Uladzislau Rezki <urezki@gmail.com>
X-Google-Original-From: Uladzislau Rezki <urezki@milan>
Date: Thu, 18 Dec 2025 15:00:49 +0100
To: Barry Song <21cnbao@gmail.com>
Message-ID: <aUQJEa643lQAGK6s@milan>
References: <20251215053050.11599-1-21cnbao@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251215053050.11599-1-21cnbao@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: urezki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GACG3OBXI2FFJBSJ4ASYEVQDT5F6AJBU
X-Message-ID-Hash: GACG3OBXI2FFJBSJ4ASYEVQDT5F6AJBU
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:53 +0000
CC: akpm@linux-foundation.org, linux-mm@kvack.org, dri-devel@lists.freedesktop.org, jstultz@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, Barry Song <v-songbaohua@oppo.com>, David Hildenbrand <david@kernel.org>, Uladzislau Rezki <urezki@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maxime Ripard <mripard@kernel.org>, Tangquan Zheng <zhengtangquan@oppo.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] mm/vmalloc: map contiguous pages in batches for vmap() whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GACG3OBXI2FFJBSJ4ASYEVQDT5F6AJBU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.19 / 15.00];
	DATE_IN_PAST(1.00)[2858];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[urezki@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux-foundation.org,kvack.org,lists.freedesktop.org,google.com,lists.linaro.org,vger.kernel.org,oppo.com,kernel.org,gmail.com,linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.035];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,oppo.com:email]
X-Rspamd-Queue-Id: 3EB2441161F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBEZWMgMTUsIDIwMjUgYXQgMDE6MzA6NTBQTSArMDgwMCwgQmFycnkgU29uZyB3cm90
ZToNCj4gRnJvbTogQmFycnkgU29uZyA8di1zb25nYmFvaHVhQG9wcG8uY29tPg0KPiANCj4gSW4g
bWFueSBjYXNlcywgdGhlIHBhZ2VzIHBhc3NlZCB0byB2bWFwKCkgbWF5IGluY2x1ZGUgaGlnaC1v
cmRlcg0KPiBwYWdlcyBhbGxvY2F0ZWQgd2l0aCBfX0dGUF9DT01QIGZsYWdzLiBGb3IgZXhhbXBs
ZSwgdGhlIHN5c3RlbWhlYXANCj4gb2Z0ZW4gYWxsb2NhdGVzIHBhZ2VzIGluIGRlc2NlbmRpbmcg
b3JkZXI6IG9yZGVyIDgsIHRoZW4gNCwgdGhlbiAwLg0KPiBDdXJyZW50bHksIHZtYXAoKSBpdGVy
YXRlcyBvdmVyIGV2ZXJ5IHBhZ2UgaW5kaXZpZHVhbGx54oCUZXZlbiBwYWdlcw0KPiBpbnNpZGUg
YSBoaWdoLW9yZGVyIGJsb2NrIGFyZSBoYW5kbGVkIG9uZSBieSBvbmUuDQo+IA0KPiBUaGlzIHBh
dGNoIGRldGVjdHMgaGlnaC1vcmRlciBwYWdlcyBhbmQgbWFwcyB0aGVtIGFzIGEgc2luZ2xlDQo+
IGNvbnRpZ3VvdXMgYmxvY2sgd2hlbmV2ZXIgcG9zc2libGUuDQo+IA0KPiBBbiBhbHRlcm5hdGl2
ZSB3b3VsZCBiZSB0byBpbXBsZW1lbnQgYSBuZXcgQVBJLCB2bWFwX3NnKCksIGJ1dCB0aGF0DQo+
IGNoYW5nZSBzZWVtcyB0byBiZSBsYXJnZSBpbiBzY29wZS4NCj4gDQo+IFdoZW4gdm1hcHBpbmcg
YSAxMjhNQiBkbWEtYnVmIHVzaW5nIHRoZSBzeXN0ZW1oZWFwLCB0aGlzIHBhdGNoDQo+IG1ha2Vz
IHN5c3RlbV9oZWFwX2RvX3ZtYXAoKSByb3VnaGx5IDE3w5cgZmFzdGVyLg0KPiANCj4gVy8gcGF0
Y2g6DQo+IFsgICAxMC40MDQ3NjldIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayAyNDk0MDAwIG5z
DQo+IFsgICAxMi41MjU5MjFdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayAyNDY3MDA4IG5zDQo+
IFsgICAxNC41MTczNDhdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayAyNDcxMDA4IG5zDQo+IFsg
ICAxNi41OTM0MDZdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayAyNDQ0MDAwIG5zDQo+IFsgICAx
OS41MDEzNDFdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayAyNDg5MDA4IG5zDQo+IA0KPiBXL28g
cGF0Y2g6DQo+IFsgICAgNy40MTM3NTZdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayA0MjYyNjAw
MCBucw0KPiBbICAgIDkuNDI1NjEwXSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgNDI1MDA5OTIg
bnMNCj4gWyAgIDExLjgxMDg5OF0gc3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDQyMjE1MDA4IG5z
DQo+IFsgICAxNC4zMzY3OTBdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayA0MjEzNDk5MiBucw0K
PiBbICAgMTYuMzczODkwXSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgNDI3NTAwMDAgbnMNCj4g
DQo+IENjOiBEYXZpZCBIaWxkZW5icmFuZCA8ZGF2aWRAa2VybmVsLm9yZz4NCj4gQ2M6IFVsYWR6
aXNsYXUgUmV6a2kgPHVyZXpraUBnbWFpbC5jb20+DQo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0
LnNlbXdhbEBsaW5hcm8ub3JnPg0KPiBDYzogSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNv
bT4NCj4gQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCj4gVGVzdGVkLWJ5
OiBUYW5ncXVhbiBaaGVuZyA8emhlbmd0YW5ncXVhbkBvcHBvLmNvbT4NCj4gU2lnbmVkLW9mZi1i
eTogQmFycnkgU29uZyA8di1zb25nYmFvaHVhQG9wcG8uY29tPg0KPiAtLS0NCj4gICogZGlmZiB3
aXRoIHJmYzoNCj4gIE1hbnkgY29kZSByZWZpbmVtZW50cyBiYXNlZCBvbiBEYXZpZCdzIHN1Z2dl
c3Rpb25zLCB0aGFua3MhDQo+ICBSZWZpbmUgY29tbWVudCBhbmQgY2hhbmdlbG9nIGFjY29yZGlu
ZyB0byBVbGFkemlzbGF1LCB0aGFua3MhDQo+ICByZmMgbGluazoNCj4gIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xpbnV4LW1tLzIwMjUxMTIyMDkwMzQzLjgxMjQzLTEtMjFjbmJhb0BnbWFpbC5j
b20vDQo+IA0KPiAgbW0vdm1hbGxvYy5jIHwgNDUgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwg
NiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tbS92bWFsbG9jLmMgYi9tbS92bWFs
bG9jLmMNCj4gaW5kZXggNDFkZDAxZTg0MzBjLi44ZDU3Nzc2N2E5ZTUgMTAwNjQ0DQo+IC0tLSBh
L21tL3ZtYWxsb2MuYw0KPiArKysgYi9tbS92bWFsbG9jLmMNCj4gQEAgLTY0Miw2ICs2NDIsMjkg
QEAgc3RhdGljIGludCB2bWFwX3NtYWxsX3BhZ2VzX3JhbmdlX25vZmx1c2godW5zaWduZWQgbG9u
ZyBhZGRyLCB1bnNpZ25lZCBsb25nIGVuZCwNCj4gIAlyZXR1cm4gZXJyOw0KPiAgfQ0KPiAgDQo+
ICtzdGF0aWMgaW5saW5lIGludCBnZXRfdm1hcF9iYXRjaF9vcmRlcihzdHJ1Y3QgcGFnZSAqKnBh
Z2VzLA0KPiArCQl1bnNpZ25lZCBpbnQgc3RyaWRlLCB1bnNpZ25lZCBpbnQgbWF4X3N0ZXBzLCB1
bnNpZ25lZCBpbnQgaWR4KQ0KPiArew0KPiArCWludCBucl9wYWdlcyA9IDE7DQo+ICsNCj4gKwkv
Kg0KPiArCSAqIEN1cnJlbnRseSwgYmF0Y2hpbmcgaXMgb25seSBzdXBwb3J0ZWQgaW4gdm1hcF9w
YWdlc19yYW5nZQ0KPiArCSAqIHdoZW4gcGFnZV9zaGlmdCA9PSBQQUdFX1NISUZULg0KPiArCSAq
Lw0KPiArCWlmIChzdHJpZGUgIT0gMSkNCj4gKwkJcmV0dXJuIDA7DQo+ICsNCj4gKwlucl9wYWdl
cyA9IGNvbXBvdW5kX25yKHBhZ2VzW2lkeF0pOw0KPiArCWlmIChucl9wYWdlcyA9PSAxKQ0KPiAr
CQlyZXR1cm4gMDsNCj4gKwlpZiAobWF4X3N0ZXBzIDwgbnJfcGFnZXMpDQo+ICsJCXJldHVybiAw
Ow0KPiArDQo+ICsJaWYgKG51bV9wYWdlc19jb250aWd1b3VzKCZwYWdlc1tpZHhdLCBucl9wYWdl
cykgPT0gbnJfcGFnZXMpDQo+ICsJCXJldHVybiBjb21wb3VuZF9vcmRlcihwYWdlc1tpZHhdKTsN
Cj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KQ2FuIHdlIGluc3RlYWQgbG9vayBhdCB0aGlzIGFz
OiBpdCBjYW4gYmUgdGhhdCB3ZSBoYXZlIGNvbnRpbnVlcw0Kc2V0IG9mIHBhZ2VzIGxldCdzIGZp
bmQgb3V0LiBJIG1lYW4gaWYgd2UgZG8gbm90IHN0aWNrIGp1c3QgdG8NCmNvbXBvdW5kIHBhZ2Vz
Lg0KDQotLQ0KVWxhZHppc2xhdSBSZXpraQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
