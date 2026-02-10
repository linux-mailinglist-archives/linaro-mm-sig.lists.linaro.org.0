Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMBfO3UHi2kdPQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 11:24:53 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F241199FB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 11:24:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8622E3ED23
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 10:24:52 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id 62C293F7E6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 10:22:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=fBK09iPf;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-483487335c2so13749355e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 02:22:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770718960; x=1771323760; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T37NO9UEmIhobl9HkIgJO4B/gLXZ/gygJYg11TDr05c=;
        b=fBK09iPfjgj85Tv8ceL92ofmCWFZq227iaojgvMIM3SQOn9OCVg3fe+ByXeIs2TjdF
         JyvSBEeow3gxJZ98eXNw3Rop0ADchmTWIW7n/YWye6B2sCTxduSbJ/eWDIGuEHt+/S9M
         JRyt+rn2uGzsU4Dx3qj/AIjk4dNZfCJriZfSooBHIGft2lQ6EFzfIpzQb5iMkmgi8Mbd
         jaqLi64uANi1GMGdGtrglQJ0kULbmrWP1vkUnMkJXu6LxkeBk1GLADtVdueN7fd0vq0X
         hhLTrPJJKMMLlH7UfwaDiuZTufAv+NlQVhowuqgtLBsgpZ9ZDKpVHBJ7m7eWEYUp20ZB
         eTDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770718960; x=1771323760;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T37NO9UEmIhobl9HkIgJO4B/gLXZ/gygJYg11TDr05c=;
        b=VnJgFbB+HWXjXVT9JrT2sWQBPQ23asWKgA67HTvpDES3hnHoqbHkJvYVJwGKHeS/qB
         xltZ1nUkM+rK1Ua5pM2wburQ+yZ5hXE7eY6zBeV/zx0VbLbLMa1k9xeoDQfdOE2beG6c
         K9Lyp62RjrCoiNa60M4xG/W9JuxTKQj4byHWlvdfxLER2yQ1OclridGg6kciYECoW/EZ
         EQPhprTm0cdY89QTG/AT7bAEDPFQjrc3kZa8srgVPVPJt3fWdN0dNYWILneM1Q/6U24E
         tnqHuo5HVxNdd0j/l5r3524qIq2G1+x52CNUvNtyHS8jw/CpwwxRlJyvvx6mY0og/32/
         gzCw==
X-Forwarded-Encrypted: i=1; AJvYcCUWprYwWAxupAvQy3GcVy8w3q2QQcLkE0Kk/+oOCcnOdOO+qsgXdJiyBO2VctVkSYj3QcP6J/Urm5mq3Uhx@lists.linaro.org
X-Gm-Message-State: AOJu0YyApP2yFVdATwW8XuWHw6zVpf5tC/62fKVTsvfkeZKhIsFeza2K
	TJEpgR7RI+n8RmeTEZ6bkX82sZ6V5OPISE3eFGvgrSKPu6EQKdD76dIj2coD7e1DaCo=
X-Gm-Gg: AZuq6aJqnDiRuBs5sOndwIKvv7r/KN9SDo8uWkz7rkHSwNRigmrxXrpWl3UEqGyn0Ti
	GySE3BtX5gqHI2f36UsEfkn/V0WxzXpTWUDwLFLGFBWhbADImWfLfnJ8lMBlPl5fijXhQXQvsbS
	bsS/olsivOftAmMa+N37EH8M78tPPN9Mk7jNH4l9CmUDmhUqVb3wmHxkI/H61MQ2E0dO0FGnOvB
	pPFfkblJKBocD0S3SGHPTfwXX3iNuhaTyD+w2Ix6UqF2b4EXIAciyrtts+6+s7AEjle0pxO+ki9
	jje4w6uu7NimYsS9MJwNJRG1G+DGuGttOKamAHuVeSofH8ENLqFiGfInwNtFV6ocCeiGKmcbiQ6
	bftc9EiRD6DV7/g10fFmclRl3KZJhG662kqrfJ09HE5LmqrRWAkCBNCKDvyLsEG4WPx7rqvtrHH
	svQLOioXV6dvpQ+ppdMZ9riJXrzD5I9Hh2EWit
X-Received: by 2002:a05:600c:3582:b0:480:3230:6c89 with SMTP id 5b1f17b1804b1-48320933594mr235144105e9.12.1770718960285;
        Tue, 10 Feb 2026 02:22:40 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:6000:83ca:11f0:7e35:a75d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d8ebfsm81549605e9.2.2026.02.10.02.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 02:22:39 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 10 Feb 2026 11:02:01 +0100
Message-ID: <20260210102232.1642-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260210102232.1642-1-christian.koenig@amd.com>
References: <20260210102232.1642-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: GBTQMPIEPXEC5DTW36RAHYXOIGJUDHPT
X-Message-ID-Hash: GBTQMPIEPXEC5DTW36RAHYXOIGJUDHPT
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6/8] dma-buf: use inline lock for the stub fence v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GBTQMPIEPXEC5DTW36RAHYXOIGJUDHPT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,igalia.com:email,linaro.org:email,amd.com:mid,amd.com:email]
X-Rspamd-Queue-Id: 92F241199FB
X-Rspamd-Action: no action

VXNpbmcgdGhlIGlubGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFf
ZmVuY2UNCmltcGxlbWVudGF0aW9ucy4NCg0KU28gdXNlIHRoaXMgYXBwcm9hY2ggZm9yIHRoZSBm
cmFtZXdvcmsncyBpbnRlcm5hbCBmZW5jZXMgYXMgd2VsbC4NCg0KQWxzbyBzYXZlcyBhYm91dCA0
IGJ5dGVzIGZvciB0aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQoNCnYyOiBkcm9wIHVubmVjZXNzYXJ5
IGNoYW5nZXMNCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPg0KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpZ2FsaWEuY29tPg0KUmV2aWV3ZWQtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5l
bC5vcmc+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAxMiArKy0tLS0tLS0t
LS0NCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkNCg0K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYw0KaW5kZXggMTgzMzg4OWU3NDY2Li41NDFlMjBhYTRlNmMgMTAwNjQ0DQot
LS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UuYw0KQEAgLTI0LDcgKzI0LDYgQEAgRVhQT1JUX1RSQUNFUE9JTlRfU1lNQk9MKGRt
YV9mZW5jZV9lbWl0KTsNCiBFWFBPUlRfVFJBQ0VQT0lOVF9TWU1CT0woZG1hX2ZlbmNlX2VuYWJs
ZV9zaWduYWwpOw0KIEVYUE9SVF9UUkFDRVBPSU5UX1NZTUJPTChkbWFfZmVuY2Vfc2lnbmFsZWQp
Ow0KIA0KLXN0YXRpYyBERUZJTkVfU1BJTkxPQ0soZG1hX2ZlbmNlX3N0dWJfbG9jayk7DQogc3Rh
dGljIHN0cnVjdCBkbWFfZmVuY2UgZG1hX2ZlbmNlX3N0dWI7DQogDQogLyoNCkBAIC0xMjMsMTIg
KzEyMiw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBkbWFfZmVuY2Vfc3R1
Yl9vcHMgPSB7DQogDQogc3RhdGljIGludCBfX2luaXQgZG1hX2ZlbmNlX2luaXRfc3R1Yih2b2lk
KQ0KIHsNCi0JZG1hX2ZlbmNlX2luaXQoJmRtYV9mZW5jZV9zdHViLCAmZG1hX2ZlbmNlX3N0dWJf
b3BzLA0KLQkJICAgICAgICZkbWFfZmVuY2Vfc3R1Yl9sb2NrLCAwLCAwKTsNCi0NCisJZG1hX2Zl
bmNlX2luaXQoJmRtYV9mZW5jZV9zdHViLCAmZG1hX2ZlbmNlX3N0dWJfb3BzLCBOVUxMLCAwLCAw
KTsNCiAJc2V0X2JpdChETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCwNCiAJCSZkbWFf
ZmVuY2Vfc3R1Yi5mbGFncyk7DQotDQogCWRtYV9mZW5jZV9zaWduYWwoJmRtYV9mZW5jZV9zdHVi
KTsNCiAJcmV0dXJuIDA7DQogfQ0KQEAgLTE2MCwxMSArMTU2LDcgQEAgc3RydWN0IGRtYV9mZW5j
ZSAqZG1hX2ZlbmNlX2FsbG9jYXRlX3ByaXZhdGVfc3R1YihrdGltZV90IHRpbWVzdGFtcCkNCiAJ
aWYgKGZlbmNlID09IE5VTEwpDQogCQlyZXR1cm4gTlVMTDsNCiANCi0JZG1hX2ZlbmNlX2luaXQo
ZmVuY2UsDQotCQkgICAgICAgJmRtYV9mZW5jZV9zdHViX29wcywNCi0JCSAgICAgICAmZG1hX2Zl
bmNlX3N0dWJfbG9jaywNCi0JCSAgICAgICAwLCAwKTsNCi0NCisJZG1hX2ZlbmNlX2luaXQoZmVu
Y2UsICZkbWFfZmVuY2Vfc3R1Yl9vcHMsIE5VTEwsIDAsIDApOw0KIAlzZXRfYml0KERNQV9GRU5D
RV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULA0KIAkJJmZlbmNlLT5mbGFncyk7DQogDQotLSANCjIu
NDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
