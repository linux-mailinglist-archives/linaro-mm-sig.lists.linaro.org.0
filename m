Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMPeM4sHi2kdPQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 11:25:15 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DB8119A04
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 11:25:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58C023F98A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 10:25:14 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 2E5E43F98A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 10:22:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=JlPUngeg;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47edd9024b1so49458015e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 02:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770718961; x=1771323761; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Gle1rSCrgOdmOiKTLZAKAartjs2E9YbHLm7AYnBWog=;
        b=JlPUngegK/tIsLqZg0W2UbkIEJMk9oWWIwW+4truPSPgtWnXBZ42TS7XHNKcGsId8q
         UTKwMk96C1DlW5P2HBiA+ekWtyKz+I0cDVveOQhav32zG6jyiur9cZx8vEPdCt2Ri4kh
         f9SObQ9lUwmMDgyqsunSF+vrDkJGPjZlElpsza2kfGvsJwme3TX0wK+onYPWLKCr84HS
         P4tmAyoOa3vCZ+uwUtk/ebBMHFPGr0eTy45tVvxwIbhsvgb5XmlO+e964pHuoSwwZQLs
         nz2zXWUFjZRou1UPZqoEXuT7u+HVnluJhC8Wgg3AVqiAi6uQkMDHwzcVBwYM75rqSIxv
         LXvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770718961; x=1771323761;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8Gle1rSCrgOdmOiKTLZAKAartjs2E9YbHLm7AYnBWog=;
        b=kwmSPvSASwAgUuAweHBUtYwpk7xLUhhT3dEeGulRdv2CyF50WytoHBreteaM8GJKZK
         YpgPRwNPyyClsfcK1ztjo8bHizXU9uZ0+oQNukqaVIkA4GytjET7dHZt9YB6ZBU8Hx9i
         iqC+aUvClNsT6gDLQzZfDdyfg8uBjt51CpTr+kGb/2Up3Z0Zrm2+MM3r6xSejKjDWvLz
         iFYxo2BmEWRyu/Ni78mGcmJurxpEh6SOSeo+NA/N7aPCB6fz56zL0RFDtTkcvd017GAu
         zYIDu9IkMFUDbqfokbLzHDbKbzEuLkYq0Rlr51VTvI5fZlX48N3zOKVSBWGuVBBAgtHL
         6t5A==
X-Forwarded-Encrypted: i=1; AJvYcCWCvdFXQB4TaAFRB4NPdaJQPLmywcbip2m0s46ozuNpsV2TqhGTflMhjiS9QNtuJhyt7kPX+xk44a1IRuA6@lists.linaro.org
X-Gm-Message-State: AOJu0Yx6zuS0diKab4MHdGAlt0IKCbfubr6ENrVX3wSF54ntT2R1skEp
	FrM6NTBBQkeJ4x0K3Tl/CSVUh3FYHeZ9H2pC/F6FTlREVI3QV8x7Quq+
X-Gm-Gg: AZuq6aJwFT9+GcAXwJJiRpIlXzscUbPCvjy8zSsovNFsWlrbHXoRqhS3a71gCKZLsix
	b1gFoKBznVZ6EojHaudRtB+4q5UWxGDrwiYboA2qREuNFgxvIKN1gRlFf0BBRDWaURd6i1h2wby
	nkMwWNGTGkVxf1YvZsCHHl2k69ed864r31qML+C5LQc2wTdfYcgINXyeh7cQ9Nm9SYpLdyQv4er
	QISAQ6MrR8yPLNQY8Jzm4TnNTpOeRvBvAGsIc+uFjf5Kaj9owRGMgLgSN0iGG4GdVwJxu4OlRIX
	3jBThIRRIZz6HVF0vPcNuLdAX3e3XFuQMziZ/BCd/Tde9Blw3UmUsza5tM50AI0iprXinbJmHYd
	aNDdgDhwiEy7AAdAKUEdmS1lgRl9q6Blh59m4/fqhL36Eg2J+CD69oGIRqUox+crSjPwCyBVRBt
	6Cei8+dEZfMYArin36XNCF53uB2rwtDdqFbMStNyH11JQB0uY=
X-Received: by 2002:a05:600c:528b:b0:477:2f7c:314f with SMTP id 5b1f17b1804b1-483201e25b5mr192551625e9.10.1770718960956;
        Tue, 10 Feb 2026 02:22:40 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:6000:83ca:11f0:7e35:a75d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d8ebfsm81549605e9.2.2026.02.10.02.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 02:22:40 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 10 Feb 2026 11:02:02 +0100
Message-ID: <20260210102232.1642-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260210102232.1642-1-christian.koenig@amd.com>
References: <20260210102232.1642-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: V3FMPBB3NNTWP3WCLBQ6N2GWNLFOHYDY
X-Message-ID-Hash: V3FMPBB3NNTWP3WCLBQ6N2GWNLFOHYDY
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 7/8] dma-buf: use inline lock for the dma-fence-array
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V3FMPBB3NNTWP3WCLBQ6N2GWNLFOHYDY/>
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
X-Rspamd-Queue-Id: 70DB8119A04
X-Rspamd-Action: no action

VXNpbmcgdGhlIGlubGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFf
ZmVuY2UNCmltcGxlbWVudGF0aW9ucy4NCg0KU28gdXNlIHRoaXMgYXBwcm9hY2ggZm9yIHRoZSBm
cmFtZXdvcmsncyBpbnRlcm5hbCBmZW5jZXMgYXMgd2VsbC4NCg0KQWxzbyBzYXZlcyBhYm91dCA0
IGJ5dGVzIGZvciB0aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQoNClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClJldmlld2VkLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NClJldmlld2VkLWJ5OiBQaGls
aXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwub3JnPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS1hcnJheS5jIHwgNSArKy0tLQ0KIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5
LmggICB8IDEgLQ0KIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jDQppbmRleCA2NjU3ZDRiMzBhZjkuLmMy
MTE5YTgwNDlmZSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXku
Yw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jDQpAQCAtMjA0LDkgKzIw
NCw4IEBAIHZvaWQgZG1hX2ZlbmNlX2FycmF5X2luaXQoc3RydWN0IGRtYV9mZW5jZV9hcnJheSAq
YXJyYXksDQogDQogCWFycmF5LT5udW1fZmVuY2VzID0gbnVtX2ZlbmNlczsNCiANCi0Jc3Bpbl9s
b2NrX2luaXQoJmFycmF5LT5sb2NrKTsNCi0JZG1hX2ZlbmNlX2luaXQoJmFycmF5LT5iYXNlLCAm
ZG1hX2ZlbmNlX2FycmF5X29wcywgJmFycmF5LT5sb2NrLA0KLQkJICAgICAgIGNvbnRleHQsIHNl
cW5vKTsNCisJZG1hX2ZlbmNlX2luaXQoJmFycmF5LT5iYXNlLCAmZG1hX2ZlbmNlX2FycmF5X29w
cywgTlVMTCwgY29udGV4dCwNCisJCSAgICAgICBzZXFubyk7DQogCWluaXRfaXJxX3dvcmsoJmFy
cmF5LT53b3JrLCBpcnFfZG1hX2ZlbmNlX2FycmF5X3dvcmspOw0KIA0KIAlhdG9taWNfc2V0KCZh
cnJheS0+bnVtX3BlbmRpbmcsIHNpZ25hbF9vbl9hbnkgPyAxIDogbnVtX2ZlbmNlcyk7DQpkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaCBiL2luY2x1ZGUvbGludXgv
ZG1hLWZlbmNlLWFycmF5LmgNCmluZGV4IDA3OWIzZGVjMGExNi4uMzcwYjNkMmJiYTM3IDEwMDY0
NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaA0KKysrIGIvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UtYXJyYXkuaA0KQEAgLTM4LDcgKzM4LDYgQEAgc3RydWN0IGRtYV9mZW5j
ZV9hcnJheV9jYiB7DQogc3RydWN0IGRtYV9mZW5jZV9hcnJheSB7DQogCXN0cnVjdCBkbWFfZmVu
Y2UgYmFzZTsNCiANCi0Jc3BpbmxvY2tfdCBsb2NrOw0KIAl1bnNpZ25lZCBudW1fZmVuY2VzOw0K
IAlhdG9taWNfdCBudW1fcGVuZGluZzsNCiAJc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlczsNCi0t
IA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
