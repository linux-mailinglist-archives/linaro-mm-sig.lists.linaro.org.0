Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJ2OMQcJ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:06:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C005411547
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:06:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 617EC40508
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:06:30 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	by lists.linaro.org (Postfix) with ESMTPS id 044383F78A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 05:31:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=gB9YS5IS;
	spf=pass (lists.linaro.org: domain of 21cnbao@gmail.com designates 209.85.210.177 as permitted sender) smtp.mailfrom=21cnbao@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7e2762ad850so3137836b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Sun, 14 Dec 2025 21:31:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765776667; x=1766381467; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uz3AkyAC19O+S8FUO5AbqCgspWmgP9i0gngDDNAJrGk=;
        b=gB9YS5IS2ESt74eX+YyLfnLrgrJlgeevQnMv6XjGS/QNcE/myoWJPNV9Pg9M7CGS0X
         SMOpcHkwfm5s8dVOyM5BGi9KL+fLNrCFexInNhiObVTw8Qi37rDueqm043EBitTz/iuh
         EitAtoKy4UkE3dcJiCQvWrgaJZyZYG0yExykeNSKF0va2dKT+Hk44oF+MbRLAtMaaUpf
         HKwjv+RJPxBoGdOuVckkBTFz6+Zfsd+FhqnZFoasCoN+X93kqsbdP3V2oG35jeuQ0R9Z
         vD05CZEE8SJ0EbqB6FySm+NZmW9kj/92wXuZjWXczuTBqO532zWDaYdyjdKpG2UoS5yd
         Q4MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765776667; x=1766381467;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uz3AkyAC19O+S8FUO5AbqCgspWmgP9i0gngDDNAJrGk=;
        b=Ev6XhO2vvlfn5G6QfESuzgXRuDoJVWySemxt8qXaGrP35yFNbcE9cJGk3FCDdc38lF
         ImGI7bdCj+1tQgI+e+RsMWig/3pjfoJ/4YQD9nEaPFiqKWJJALF+Kk7D8Dg1xb/Vn4s/
         5kkdKmvq3a9Zp6QDILSrc26MwevI0AKr3YlER5XAGixGDrNlXvgkKpyu3woGmUVAM0A9
         HgYK+5xtD4wNo0kLPk2AX8COquCMTdZBQhre+aNuCKB9dS6f6oi2fNOmueZkiRFluiDj
         QUh19K/Y7YAU/NqFuqzSr+Y5G/Xp5My7OU5Y82gXHAeG1OcT6dHfE/ImeDxyCoZ4r/Bp
         e59g==
X-Forwarded-Encrypted: i=1; AJvYcCXCugjypI/jBWLKzEWBUm7hCXRXwBWHUgNZGuiOuvM0/EnFyb32+TLM610um5oSeJOmkxNoPCqC8QF9nPwS@lists.linaro.org
X-Gm-Message-State: AOJu0Yy1LCIwqzKlQcF/CH67/Bvkk3m79+796S8P2O7FitOq/zqiwIvC
	MiyJPlommkIchhCVDew+PEgzvsdUJnJiZOqko5404QEPsKI9oDECJA/t
X-Gm-Gg: AY/fxX5tUg/InJd2PqMIvWSzJPgQQh0HtMJBrDJuFXrqoT6eL9n2XD8kGY1TA2npw3u
	FXZF/coWHgDu+6gSaHGuyiIU93/KiKS8+9RWpHlJjdLWDyW6y6NqPZj3MtIBda3Ht7x07O89d5Y
	8EHz5ioT3dGGmVQti+WY/tOTMtIoIatdL7GnRlLtM2HBFbDLBoTO9Xw3FczdFpnIFp40CW6QNoX
	tYlgaz8/wJazwIxveA5eo23OQ5/NjKJ2D8lpbg6vc1n5UWx9MnE42H9PpaAjkBzp9zWGVENY0km
	JS/0wxKG8LYN9Mn9ry1y6F1kDLEd1osrbbmhhntEepXB5DalkdThbZgOP8nLM3HtfJusLw7yQIw
	b8I5oI/U6MqjLSaChBwMP8J8oYN2mQl9Hvo6kUCtxp38lgIpXLsis0OXg60Ndpb7h0ma6//4eRf
	u1AJhvc5Oe75Jn+8fVDteJhaTpkg==
X-Google-Smtp-Source: AGHT+IHNaawrkiaB8tEzN2LJvPo55x1qDp7wzj9Mb1MNnfFeFzZwkDr8l2UABw6Bq3fG7Z2E49LeWQ==
X-Received: by 2002:a05:6a00:a381:b0:7e8:4433:8fa1 with SMTP id d2e1a72fcca58-7f6694aa660mr7586764b3a.41.1765776666944;
        Sun, 14 Dec 2025 21:31:06 -0800 (PST)
Received: from Barrys-MBP.hub ([47.72.129.29])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7f4c509cb51sm11409151b3a.54.2025.12.14.21.31.02
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 14 Dec 2025 21:31:06 -0800 (PST)
From: Barry Song <21cnbao@gmail.com>
To: akpm@linux-foundation.org,
	linux-mm@kvack.org
Date: Mon, 15 Dec 2025 13:30:50 +0800
Message-Id: <20251215053050.11599-1-21cnbao@gmail.com>
X-Mailer: git-send-email 2.39.3 (Apple Git-146)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: 21cnbao@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RYWFCS3OOXE32YTDHYOBZTTE4FAT5H6Q
X-Message-ID-Hash: RYWFCS3OOXE32YTDHYOBZTTE4FAT5H6Q
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:42 +0000
CC: dri-devel@lists.freedesktop.org, jstultz@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, Barry Song <v-songbaohua@oppo.com>, David Hildenbrand <david@kernel.org>, Uladzislau Rezki <urezki@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maxime Ripard <mripard@kernel.org>, Tangquan Zheng <zhengtangquan@oppo.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] mm/vmalloc: map contiguous pages in batches for vmap() whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RYWFCS3OOXE32YTDHYOBZTTE4FAT5H6Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[2938];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.307];
	FROM_NEQ_ENVFROM(0.00)[21cnbao@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,google.com,lists.linaro.org,vger.kernel.org,oppo.com,kernel.org,gmail.com,linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,oppo.com:email]
X-Rspamd-Queue-Id: 5C005411547
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

RnJvbTogQmFycnkgU29uZyA8di1zb25nYmFvaHVhQG9wcG8uY29tPg0KDQpJbiBtYW55IGNhc2Vz
LCB0aGUgcGFnZXMgcGFzc2VkIHRvIHZtYXAoKSBtYXkgaW5jbHVkZSBoaWdoLW9yZGVyDQpwYWdl
cyBhbGxvY2F0ZWQgd2l0aCBfX0dGUF9DT01QIGZsYWdzLiBGb3IgZXhhbXBsZSwgdGhlIHN5c3Rl
bWhlYXANCm9mdGVuIGFsbG9jYXRlcyBwYWdlcyBpbiBkZXNjZW5kaW5nIG9yZGVyOiBvcmRlciA4
LCB0aGVuIDQsIHRoZW4gMC4NCkN1cnJlbnRseSwgdm1hcCgpIGl0ZXJhdGVzIG92ZXIgZXZlcnkg
cGFnZSBpbmRpdmlkdWFsbHnigJRldmVuIHBhZ2VzDQppbnNpZGUgYSBoaWdoLW9yZGVyIGJsb2Nr
IGFyZSBoYW5kbGVkIG9uZSBieSBvbmUuDQoNClRoaXMgcGF0Y2ggZGV0ZWN0cyBoaWdoLW9yZGVy
IHBhZ2VzIGFuZCBtYXBzIHRoZW0gYXMgYSBzaW5nbGUNCmNvbnRpZ3VvdXMgYmxvY2sgd2hlbmV2
ZXIgcG9zc2libGUuDQoNCkFuIGFsdGVybmF0aXZlIHdvdWxkIGJlIHRvIGltcGxlbWVudCBhIG5l
dyBBUEksIHZtYXBfc2coKSwgYnV0IHRoYXQNCmNoYW5nZSBzZWVtcyB0byBiZSBsYXJnZSBpbiBz
Y29wZS4NCg0KV2hlbiB2bWFwcGluZyBhIDEyOE1CIGRtYS1idWYgdXNpbmcgdGhlIHN5c3RlbWhl
YXAsIHRoaXMgcGF0Y2gNCm1ha2VzIHN5c3RlbV9oZWFwX2RvX3ZtYXAoKSByb3VnaGx5IDE3w5cg
ZmFzdGVyLg0KDQpXLyBwYXRjaDoNClsgICAxMC40MDQ3NjldIHN5c3RlbV9oZWFwX2RvX3ZtYXAg
dG9vayAyNDk0MDAwIG5zDQpbICAgMTIuNTI1OTIxXSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sg
MjQ2NzAwOCBucw0KWyAgIDE0LjUxNzM0OF0gc3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDI0NzEw
MDggbnMNClsgICAxNi41OTM0MDZdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayAyNDQ0MDAwIG5z
DQpbICAgMTkuNTAxMzQxXSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgMjQ4OTAwOCBucw0KDQpX
L28gcGF0Y2g6DQpbICAgIDcuNDEzNzU2XSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgNDI2MjYw
MDAgbnMNClsgICAgOS40MjU2MTBdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayA0MjUwMDk5MiBu
cw0KWyAgIDExLjgxMDg5OF0gc3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDQyMjE1MDA4IG5zDQpb
ICAgMTQuMzM2NzkwXSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgNDIxMzQ5OTIgbnMNClsgICAx
Ni4zNzM4OTBdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayA0Mjc1MDAwMCBucw0KDQpDYzogRGF2
aWQgSGlsZGVuYnJhbmQgPGRhdmlkQGtlcm5lbC5vcmc+DQpDYzogVWxhZHppc2xhdSBSZXpraSA8
dXJlemtpQGdtYWlsLmNvbT4NCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8u
b3JnPg0KQ2M6IEpvaG4gU3R1bHR6IDxqc3R1bHR6QGdvb2dsZS5jb20+DQpDYzogTWF4aW1lIFJp
cGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0KVGVzdGVkLWJ5OiBUYW5ncXVhbiBaaGVuZyA8emhl
bmd0YW5ncXVhbkBvcHBvLmNvbT4NClNpZ25lZC1vZmYtYnk6IEJhcnJ5IFNvbmcgPHYtc29uZ2Jh
b2h1YUBvcHBvLmNvbT4NCi0tLQ0KICogZGlmZiB3aXRoIHJmYzoNCiBNYW55IGNvZGUgcmVmaW5l
bWVudHMgYmFzZWQgb24gRGF2aWQncyBzdWdnZXN0aW9ucywgdGhhbmtzIQ0KIFJlZmluZSBjb21t
ZW50IGFuZCBjaGFuZ2Vsb2cgYWNjb3JkaW5nIHRvIFVsYWR6aXNsYXUsIHRoYW5rcyENCiByZmMg
bGluazoNCiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tbS8yMDI1MTEyMjA5MDM0My44
MTI0My0xLTIxY25iYW9AZ21haWwuY29tLw0KDQogbW0vdm1hbGxvYy5jIHwgNDUgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDM5
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9tbS92bWFsbG9j
LmMgYi9tbS92bWFsbG9jLmMNCmluZGV4IDQxZGQwMWU4NDMwYy4uOGQ1Nzc3NjdhOWU1IDEwMDY0
NA0KLS0tIGEvbW0vdm1hbGxvYy5jDQorKysgYi9tbS92bWFsbG9jLmMNCkBAIC02NDIsNiArNjQy
LDI5IEBAIHN0YXRpYyBpbnQgdm1hcF9zbWFsbF9wYWdlc19yYW5nZV9ub2ZsdXNoKHVuc2lnbmVk
IGxvbmcgYWRkciwgdW5zaWduZWQgbG9uZyBlbmQsDQogCXJldHVybiBlcnI7DQogfQ0KIA0KK3N0
YXRpYyBpbmxpbmUgaW50IGdldF92bWFwX2JhdGNoX29yZGVyKHN0cnVjdCBwYWdlICoqcGFnZXMs
DQorCQl1bnNpZ25lZCBpbnQgc3RyaWRlLCB1bnNpZ25lZCBpbnQgbWF4X3N0ZXBzLCB1bnNpZ25l
ZCBpbnQgaWR4KQ0KK3sNCisJaW50IG5yX3BhZ2VzID0gMTsNCisNCisJLyoNCisJICogQ3VycmVu
dGx5LCBiYXRjaGluZyBpcyBvbmx5IHN1cHBvcnRlZCBpbiB2bWFwX3BhZ2VzX3JhbmdlDQorCSAq
IHdoZW4gcGFnZV9zaGlmdCA9PSBQQUdFX1NISUZULg0KKwkgKi8NCisJaWYgKHN0cmlkZSAhPSAx
KQ0KKwkJcmV0dXJuIDA7DQorDQorCW5yX3BhZ2VzID0gY29tcG91bmRfbnIocGFnZXNbaWR4XSk7
DQorCWlmIChucl9wYWdlcyA9PSAxKQ0KKwkJcmV0dXJuIDA7DQorCWlmIChtYXhfc3RlcHMgPCBu
cl9wYWdlcykNCisJCXJldHVybiAwOw0KKw0KKwlpZiAobnVtX3BhZ2VzX2NvbnRpZ3VvdXMoJnBh
Z2VzW2lkeF0sIG5yX3BhZ2VzKSA9PSBucl9wYWdlcykNCisJCXJldHVybiBjb21wb3VuZF9vcmRl
cihwYWdlc1tpZHhdKTsNCisJcmV0dXJuIDA7DQorfQ0KKw0KIC8qDQogICogdm1hcF9wYWdlc19y
YW5nZV9ub2ZsdXNoIGlzIHNpbWlsYXIgdG8gdm1hcF9wYWdlc19yYW5nZSwgYnV0IGRvZXMgbm90
DQogICogZmx1c2ggY2FjaGVzLg0KQEAgLTY1NSwyMyArNjc4LDMzIEBAIGludCBfX3ZtYXBfcGFn
ZXNfcmFuZ2Vfbm9mbHVzaCh1bnNpZ25lZCBsb25nIGFkZHIsIHVuc2lnbmVkIGxvbmcgZW5kLA0K
IAkJcGdwcm90X3QgcHJvdCwgc3RydWN0IHBhZ2UgKipwYWdlcywgdW5zaWduZWQgaW50IHBhZ2Vf
c2hpZnQpDQogew0KIAl1bnNpZ25lZCBpbnQgaSwgbnIgPSAoZW5kIC0gYWRkcikgPj4gUEFHRV9T
SElGVDsNCisJdW5zaWduZWQgaW50IHN0cmlkZTsNCiANCiAJV0FSTl9PTihwYWdlX3NoaWZ0IDwg
UEFHRV9TSElGVCk7DQogDQorCS8qDQorCSAqIEZvciB2bWFwKCksIHVzZXJzIG1heSBhbGxvY2F0
ZSBwYWdlcyBmcm9tIGhpZ2ggb3JkZXJzIGRvd24gdG8NCisJICogb3JkZXIgMCwgd2hpbGUgYWx3
YXlzIHVzaW5nIFBBR0VfU0hJRlQgYXMgdGhlIHBhZ2Vfc2hpZnQuDQorCSAqIFdlIGZpcnN0IGNo
ZWNrIHdoZXRoZXIgdGhlIGluaXRpYWwgcGFnZSBpcyBhIGNvbXBvdW5kIHBhZ2UuIElmIHNvLA0K
KwkgKiB0aGVyZSBtYXkgYmUgYW4gb3Bwb3J0dW5pdHkgdG8gYmF0Y2ggbXVsdGlwbGUgcGFnZXMg
dG9nZXRoZXIuDQorCSAqLw0KIAlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX0hBVkVfQVJDSF9IVUdF
X1ZNQUxMT0MpIHx8DQotCQkJcGFnZV9zaGlmdCA9PSBQQUdFX1NISUZUKQ0KKwkJCShwYWdlX3No
aWZ0ID09IFBBR0VfU0hJRlQgJiYgIVBhZ2VDb21wb3VuZChwYWdlc1swXSkpKQ0KIAkJcmV0dXJu
IHZtYXBfc21hbGxfcGFnZXNfcmFuZ2Vfbm9mbHVzaChhZGRyLCBlbmQsIHByb3QsIHBhZ2VzKTsN
CiANCi0JZm9yIChpID0gMDsgaSA8IG5yOyBpICs9IDFVIDw8IChwYWdlX3NoaWZ0IC0gUEFHRV9T
SElGVCkpIHsNCi0JCWludCBlcnI7DQorCXN0cmlkZSA9IDFVIDw8IChwYWdlX3NoaWZ0IC0gUEFH
RV9TSElGVCk7DQorCWZvciAoaSA9IDA7IGkgPCBucjsgKSB7DQorCQlpbnQgZXJyLCBvcmRlcjsN
CiANCi0JCWVyciA9IHZtYXBfcmFuZ2Vfbm9mbHVzaChhZGRyLCBhZGRyICsgKDFVTCA8PCBwYWdl
X3NoaWZ0KSwNCisJCW9yZGVyID0gZ2V0X3ZtYXBfYmF0Y2hfb3JkZXIocGFnZXMsIHN0cmlkZSwg
bnIgLSBpLCBpKTsNCisJCWVyciA9IHZtYXBfcmFuZ2Vfbm9mbHVzaChhZGRyLCBhZGRyICsgKDFV
TCA8PCAocGFnZV9zaGlmdCArIG9yZGVyKSksDQogCQkJCQlwYWdlX3RvX3BoeXMocGFnZXNbaV0p
LCBwcm90LA0KLQkJCQkJcGFnZV9zaGlmdCk7DQorCQkJCQlwYWdlX3NoaWZ0ICsgb3JkZXIpOw0K
IAkJaWYgKGVycikNCiAJCQlyZXR1cm4gZXJyOw0KIA0KLQkJYWRkciArPSAxVUwgPDwgcGFnZV9z
aGlmdDsNCisJCWFkZHIgKz0gMVVMICA8PCAocGFnZV9zaGlmdCArIG9yZGVyKTsNCisJCWkgKz0g
MVUgPDwgKG9yZGVyICsgcGFnZV9zaGlmdCAtIFBBR0VfU0hJRlQpOw0KIAl9DQogDQogCXJldHVy
biAwOw0KLS0gDQoyLjM5LjMgKEFwcGxlIEdpdC0xNDYpDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
