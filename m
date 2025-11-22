Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDk1LqD/4Gk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:26:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBAF410B77
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:26:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 875F6405CA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:26:23 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by lists.linaro.org (Postfix) with ESMTPS id 8E5673F772
	for <linaro-mm-sig@lists.linaro.org>; Sat, 22 Nov 2025 09:03:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=cFTJZ7ua;
	spf=pass (lists.linaro.org: domain of 21cnbao@gmail.com designates 209.85.216.47 as permitted sender) smtp.mailfrom=21cnbao@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-3438231df5fso3549989a91.2
        for <linaro-mm-sig@lists.linaro.org>; Sat, 22 Nov 2025 01:03:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763802233; x=1764407033; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gWSIc38wakQFkjPaEOd32h4AOI7qtYUllCcYDLleeHs=;
        b=cFTJZ7uaqjbhgTTEzsaOaJ30IPjiTogbIoTZI9K6wnWG4+E44qICrdw/QTJpd2GoZK
         RLlnQw0sql7RV295TAgLusrPFtrlRJFH5Zxc+AarL2Db7Vu/jqJ9Vpjp+SZmgZO+Wvsz
         iI36s6/7sgE6oCH7kL7dV1aGW5VuQ/OtgEFE5VLagio8954AKIbgK5JkKzlQ/gPK+hTV
         tm9e8wLtCP2zoz9d3Dfhe0B9Q+Vl7rTWR39pGrPyinRtxSTHyy9vkhZyPN4ScqEbuNaa
         FtHGkh8OKJRvyHBhTasZhC3efPZ+A1+SfTq1E5m0+i5JW0v8OZURuTEZu5XGiS1s5Idi
         SnRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763802233; x=1764407033;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gWSIc38wakQFkjPaEOd32h4AOI7qtYUllCcYDLleeHs=;
        b=JiMl12bvFLR31ZH1Uu3FAKXhmTTumYIXKCVYPvLOymC0anrFGgNTAVIjGfciryK/Iu
         xM+T/IDFhuH5j6MKOcVELJh7MA046cfqUgvOFtWNIqyAjZX4JWJ1D+g7pbUTi7S93yEu
         AQ/9qOxYJOcR2XQpfO+e6HR6cjYYNo2PGsDrXB7QM0KAXchmvW9cqIEmK84snZo47d+e
         vlD34ZQBZTrMko+Dr4wsSFoyMjkJJ5Ew8O5VRDYbVHLBogV28olYTGI33mG+7+Wx0yyS
         ZTkTpYhSC9YK1WE4c7r2DG7SCAM46NiFeX4lm4zOyRq41vz7DV2U8RnIE3zMs6rL+oK0
         1qLA==
X-Forwarded-Encrypted: i=1; AJvYcCWWeMNWI5u+b+Q1X/iGLpXljNT1+w9TP91iDDUyACTbhH1SQkldRLTu6e78YCW8QyVVJkqdl15VOdIIDOij@lists.linaro.org
X-Gm-Message-State: AOJu0YyaJxEtxTOg/vE5Y6o7sHw4tTVyNdg0BSkMOzSJviGRSQpXYdiB
	XnLD4Q/gZw6d2SxGhnvy1XiSMkXqPo+5I+Tqu3tmbAjKaDFKj34abHYMSKqyytYe
X-Gm-Gg: ASbGncs1EymxrD5fV4oOJoOYCp1D20EwqWD458RdN75crji1AisrqTnuNwm2Aqzkd9R
	S97b/67+qtAoyHb+k9LgQs49JgP8mnhb8+9l8gJW6n8Gf54u2LADADBLyfgefDzV0hP+loj6X/p
	OvG5nNDHU3T4raTgAsfN3xiC246vuqRYGeDAU0L+pFS71Bn61lTaZpBWLhao8b8zbZBNcRLfyvY
	/Ac1ZWWEw14azG4kI27e/HbdtUewrS+v+dq8/hgF60VP4hpGv5u+GM//ZJPknrhLb8/Wfag6L4w
	iIZvOxMRmzs0mlUcYc1xHP4+mR+G6JCDj0d8eO8pPLZo1s2j7cbZx5wDLUn844x05n9BIlZhEr8
	vfZ1f8PnvUM4P7z0sCRR/03Hi2c8N20LBhML3NX1jNJwJt7NZ2SgO8U/kQ3UA+cGtUNopTwwpwr
	w7CRuh+/TatXAEcL1Rr60QD1KA
X-Google-Smtp-Source: AGHT+IFEXYWimQk4DcIAFQyt9lEPKtWhsqJCLh0YYLXBxKfxO64RbGZR0X6+cGmFQNdZPcXXMZdWtg==
X-Received: by 2002:a17:90b:540b:b0:33f:ebc2:634 with SMTP id 98e67ed59e1d1-34733e78ea2mr5873399a91.9.1763802232568;
        Sat, 22 Nov 2025 01:03:52 -0800 (PST)
Received: from Barrys-MBP.hub ([47.72.129.29])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3472692e5c8sm7842401a91.11.2025.11.22.01.03.48
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sat, 22 Nov 2025 01:03:52 -0800 (PST)
From: Barry Song <21cnbao@gmail.com>
To: akpm@linux-foundation.org,
	linux-mm@kvack.org
Date: Sat, 22 Nov 2025 17:03:43 +0800
Message-Id: <20251122090343.81243-1-21cnbao@gmail.com>
X-Mailer: git-send-email 2.39.3 (Apple Git-146)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: 21cnbao@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SXERKS57FKVPDTWLUIIBCFYPXDCFMJMU
X-Message-ID-Hash: SXERKS57FKVPDTWLUIIBCFYPXDCFMJMU
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:01:15 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Barry Song <v-songbaohua@oppo.com>, Uladzislau Rezki <urezki@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, John Stultz <jstultz@google.com>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC] mm/vmap: map contiguous pages in batches whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SXERKS57FKVPDTWLUIIBCFYPXDCFMJMU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[3486];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	FROM_NEQ_ENVFROM(0.00)[21cnbao@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,oppo.com,gmail.com,linaro.org,google.com,kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.017];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,oppo.com:email]
X-Rspamd-Queue-Id: 7BBAF410B77
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

RnJvbTogQmFycnkgU29uZyA8di1zb25nYmFvaHVhQG9wcG8uY29tPg0KDQpJbiBtYW55IGNhc2Vz
LCB0aGUgcGFnZXMgcGFzc2VkIHRvIHZtYXAoKSBtYXkgaW5jbHVkZQ0KaGlnaC1vcmRlciBwYWdl
c+KAlGZvciBleGFtcGxlLCB0aGUgc3lzdGVtaGVhcCBvZnRlbiBhbGxvY2F0ZXMNCnBhZ2VzIGlu
IGRlc2NlbmRpbmcgb3JkZXI6IG9yZGVyIDgsIHRoZW4gNCwgdGhlbiAwLiBDdXJyZW50bHksDQp2
bWFwKCkgaXRlcmF0ZXMgb3ZlciBldmVyeSBwYWdlIGluZGl2aWR1YWxseeKAlGV2ZW4gdGhlIHBh
Z2VzDQppbnNpZGUgYSBoaWdoLW9yZGVyIGJsb2NrIGFyZSBoYW5kbGVkIG9uZSBieSBvbmUuIFRo
aXMgcGF0Y2gNCmRldGVjdHMgaGlnaC1vcmRlciBwYWdlcyBhbmQgbWFwcyB0aGVtIGFzIGEgc2lu
Z2xlIGNvbnRpZ3VvdXMNCmJsb2NrIHdoZW5ldmVyIHBvc3NpYmxlLg0KDQpBbm90aGVyIHBvc3Np
YmlsaXR5IGlzIHRvIGltcGxlbWVudCBhIG5ldyBBUEksIHZtYXBfc2coKS4NCkhvd2V2ZXIsIHRo
YXQgY2hhbmdlIHNlZW1zIHRvIGJlIHF1aXRlIGxhcmdlIGluIHNjb3BlLg0KDQpXaGVuIHZtYXBw
aW5nIGEgMTI4TUIgZG1hLWJ1ZiB1c2luZyB0aGUgc3lzdGVtaGVhcCwNCnRoaXMgUkZDIGFwcGVh
cnMgdG8gbWFrZSBzeXN0ZW1faGVhcF9kb192bWFwKCkgMTbDlyBmYXN0ZXI6DQoNClcvIHBhdGNo
Og0KWyAgIDUxLjM2MzY4Ml0gc3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDI0NzQwMDAgbnMNClsg
ICA1My4zMDcwNDRdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayAyNDY5MDA4IG5zDQpbICAgNTUu
MDYxOTg1XSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgMjUxOTAwOCBucw0KWyAgIDU2LjY1Mzgx
MF0gc3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDI2NzQwMDAgbnMNCg0KVy9vIHBhdGNoOg0KWyAg
ICA4LjI2MDg4MF0gc3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDM5NDkwMDAwIG5zDQpbICAgMzIu
NTEzMjkyXSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgMzg3ODQwMDAgbnMNClsgICA4Mi42NzMz
NzRdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayA0MDcxMTAwOCBucw0KWyAgIDg0LjU3OTA2Ml0g
c3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDQwMjM2MDAwIG5zDQoNCkNjOiBVbGFkemlzbGF1IFJl
emtpIDx1cmV6a2lAZ21haWwuY29tPg0KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxp
bmFyby5vcmc+DQpDYzogSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4NCkNjOiBNYXhp
bWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQpTaWduZWQtb2ZmLWJ5OiBCYXJyeSBTb25n
IDx2LXNvbmdiYW9odWFAb3Bwby5jb20+DQotLS0NCiBtbS92bWFsbG9jLmMgfCA0OSArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tDQogMSBmaWxlIGNoYW5n
ZWQsIDQzIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9tbS92
bWFsbG9jLmMgYi9tbS92bWFsbG9jLmMNCmluZGV4IDA4MzJmOTQ0NTQ0Yy4uYWYyZTNlOGMwNTJh
IDEwMDY0NA0KLS0tIGEvbW0vdm1hbGxvYy5jDQorKysgYi9tbS92bWFsbG9jLmMNCkBAIC02NDIs
NiArNjQyLDM0IEBAIHN0YXRpYyBpbnQgdm1hcF9zbWFsbF9wYWdlc19yYW5nZV9ub2ZsdXNoKHVu
c2lnbmVkIGxvbmcgYWRkciwgdW5zaWduZWQgbG9uZyBlbmQsDQogCXJldHVybiBlcnI7DQogfQ0K
IA0KK3N0YXRpYyBpbmxpbmUgaW50IGdldF92bWFwX2JhdGNoX29yZGVyKHN0cnVjdCBwYWdlICoq
cGFnZXMsDQorCQl1bnNpZ25lZCBpbnQgc3RyaWRlLA0KKwkJaW50IG1heF9zdGVwcywNCisJCXVu
c2lnbmVkIGludCBpZHgpDQorew0KKwkvKg0KKwkgKiBDdXJyZW50bHksIGJhdGNoaW5nIGlzIG9u
bHkgc3VwcG9ydGVkIGluIHZtYXBfcGFnZXNfcmFuZ2UNCisJICogd2hlbiBwYWdlX3NoaWZ0ID09
IFBBR0VfU0hJRlQuDQorCSAqLw0KKwlpZiAoc3RyaWRlICE9IDEpDQorCQlyZXR1cm4gMDsNCisN
CisJc3RydWN0IHBhZ2UgKmJhc2UgPSBwYWdlc1tpZHhdOw0KKwlpZiAoIVBhZ2VIZWFkKGJhc2Up
KQ0KKwkJcmV0dXJuIDA7DQorDQorCWludCBvcmRlciA9IGNvbXBvdW5kX29yZGVyKGJhc2UpOw0K
KwlpbnQgbnJfcGFnZXMgPSAxIDw8IG9yZGVyOw0KKw0KKwlpZiAobWF4X3N0ZXBzIDwgbnJfcGFn
ZXMpDQorCQlyZXR1cm4gMDsNCisNCisJZm9yIChpbnQgaSA9IDA7IGkgPCBucl9wYWdlczsgaSsr
KQ0KKwkJaWYgKHBhZ2VzW2lkeCArIGldICE9IGJhc2UgKyBpKQ0KKwkJCXJldHVybiAwOw0KKwly
ZXR1cm4gb3JkZXI7DQorfQ0KKw0KIC8qDQogICogdm1hcF9wYWdlc19yYW5nZV9ub2ZsdXNoIGlz
IHNpbWlsYXIgdG8gdm1hcF9wYWdlc19yYW5nZSwgYnV0IGRvZXMgbm90DQogICogZmx1c2ggY2Fj
aGVzLg0KQEAgLTY1NSwyMyArNjgzLDMyIEBAIGludCBfX3ZtYXBfcGFnZXNfcmFuZ2Vfbm9mbHVz
aCh1bnNpZ25lZCBsb25nIGFkZHIsIHVuc2lnbmVkIGxvbmcgZW5kLA0KIAkJcGdwcm90X3QgcHJv
dCwgc3RydWN0IHBhZ2UgKipwYWdlcywgdW5zaWduZWQgaW50IHBhZ2Vfc2hpZnQpDQogew0KIAl1
bnNpZ25lZCBpbnQgaSwgbnIgPSAoZW5kIC0gYWRkcikgPj4gUEFHRV9TSElGVDsNCisJdW5zaWdu
ZWQgaW50IHN0cmlkZTsNCiANCiAJV0FSTl9PTihwYWdlX3NoaWZ0IDwgUEFHRV9TSElGVCk7DQog
DQorCS8qDQorCSAqIFNvbWUgdXNlcnMgbWF5IGFsbG9jYXRlIHBhZ2VzIGZyb20gaGlnaC1vcmRl
ciBkb3duIHRvIG9yZGVyIDAuDQorCSAqIFdlIHJvdWdobHkgY2hlY2sgaWYgdGhlIGZpcnN0IHBh
Z2UgaXMgYSBjb21wb3VuZCBwYWdlLiBJZiBzbywNCisJICogdGhlcmUgaXMgYSBjaGFuY2UgdG8g
YmF0Y2ggbXVsdGlwbGUgcGFnZXMgdG9nZXRoZXIuDQorCSAqLw0KIAlpZiAoIUlTX0VOQUJMRUQo
Q09ORklHX0hBVkVfQVJDSF9IVUdFX1ZNQUxMT0MpIHx8DQotCQkJcGFnZV9zaGlmdCA9PSBQQUdF
X1NISUZUKQ0KKwkJCShwYWdlX3NoaWZ0ID09IFBBR0VfU0hJRlQgJiYgIVBhZ2VDb21wb3VuZChw
YWdlc1swXSkpKQ0KIAkJcmV0dXJuIHZtYXBfc21hbGxfcGFnZXNfcmFuZ2Vfbm9mbHVzaChhZGRy
LCBlbmQsIHByb3QsIHBhZ2VzKTsNCiANCi0JZm9yIChpID0gMDsgaSA8IG5yOyBpICs9IDFVIDw8
IChwYWdlX3NoaWZ0IC0gUEFHRV9TSElGVCkpIHsNCi0JCWludCBlcnI7DQorCXN0cmlkZSA9IDFV
IDw8IChwYWdlX3NoaWZ0IC0gUEFHRV9TSElGVCk7DQorCWZvciAoaSA9IDA7IGkgPCBucjsgKSB7
DQorCQlpbnQgZXJyLCBvcmRlcjsNCiANCi0JCWVyciA9IHZtYXBfcmFuZ2Vfbm9mbHVzaChhZGRy
LCBhZGRyICsgKDFVTCA8PCBwYWdlX3NoaWZ0KSwNCisJCW9yZGVyID0gZ2V0X3ZtYXBfYmF0Y2hf
b3JkZXIocGFnZXMsIHN0cmlkZSwgbnIgLSBpLCBpKTsNCisJCWVyciA9IHZtYXBfcmFuZ2Vfbm9m
bHVzaChhZGRyLCBhZGRyICsgKDFVTCA8PCAocGFnZV9zaGlmdCArIG9yZGVyKSksDQogCQkJCQlw
YWdlX3RvX3BoeXMocGFnZXNbaV0pLCBwcm90LA0KLQkJCQkJcGFnZV9zaGlmdCk7DQorCQkJCQlw
YWdlX3NoaWZ0ICsgb3JkZXIpOw0KIAkJaWYgKGVycikNCiAJCQlyZXR1cm4gZXJyOw0KIA0KLQkJ
YWRkciArPSAxVUwgPDwgcGFnZV9zaGlmdDsNCisJCWFkZHIgKz0gMVVMICA8PCAocGFnZV9zaGlm
dCArIG9yZGVyKTsNCisJCWkgKz0gMVUgPDwgKG9yZGVyICsgcGFnZV9zaGlmdCAtIFBBR0VfU0hJ
RlQpOw0KIAl9DQogDQogCXJldHVybiAwOw0KLS0gDQoyLjM5LjMgKEFwcGxlIEdpdC0xNDYpDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
