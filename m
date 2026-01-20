Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 26282D3C66B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 11:59:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D08840168
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 10:59:03 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id 5C04F4014A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 10:57:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=iq9I0tJ5;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.44 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4801d7c72a5so26840855e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 02:57:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768906625; x=1769511425; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Gle1rSCrgOdmOiKTLZAKAartjs2E9YbHLm7AYnBWog=;
        b=iq9I0tJ5rl6vwItme/b3tqMifRVpi+0JX+jTQD2LQiufz3gAZHufXtvBMv92CVbBAC
         UdqVMWP6noPo4XQ1ygv28DvRECV+U7yomEoNvUauf/jxPXN2odMtmw5KC9ugtLLhTgTe
         o+Aq9F7S3g1woBm8ZcVKB17iG9DLhQoJNqBwdyIUrgbnwHjfRUOkiGLHwXRNyqiFcfnB
         t6j4n2afJuX836jpubfx9xs+KT6rnHLjA8ppqLMZBe5jcwuxwN5nJAbHZTpWh6k5fCM1
         EIqnA29Oe4qwNtvbG/LYd7DUVLoS11HvTal4DEBh5d0RqJwHjPY0dGS5a6Ty0RNiAEur
         BvGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768906625; x=1769511425;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8Gle1rSCrgOdmOiKTLZAKAartjs2E9YbHLm7AYnBWog=;
        b=nIzPkmYOEnOaSE4dT4kgpwP0m/Ykq7LECmKrMy62XbnqGC1KBDRtWW0pD89NHnqv44
         RwCTrWL1t1RuF50NIg5IIfAlkRaJf6EnO4xFtLDHtlNHbusqhgy6UBSxoMEMO9Hbxmys
         zqrG6iBe44PDjEsg7Yjemt+WK1yVkeMOhb5DRIbKA/zHlrAEsO3uuTFbuR39J+4nnmXO
         eB+BJ9c56cJXvsBA+OORZw+Hnmu3GLiGFtOAU5A3L6zZru18WGb7rmOdV+bC5tyNZOuN
         1TaskJaTJqwviKQuigyetFe5mpbY28EX2vurGnXwI9/L5E9RwkD1Zvu7YQokjzTU8swm
         uXQQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3KCYaGIwdGp7yyREx1PDiaTXPoHD9IFmgbhNag/aFRP2IkA1ztoNe0HtVbSrUjzV2YtRj2e8L4ASSUhOE@lists.linaro.org
X-Gm-Message-State: AOJu0YyKZGH7QQCBLX9fFXQ10R47PqQG+ebZ9QT8JJRST1cMopzwIQGW
	9ZlLWA/XQ9iL7oEc249r8U/kMscgo5lQgFns1gfQ/E0f7vww3kUHG3Jelfiec0Et0Rc=
X-Gm-Gg: AY/fxX46yRZIJeq+lCEyI3Ss/9S4pA+7JxjzXu7pehT1p3LIlg8R6qrIFm3It16CRiC
	hzxyFOxJZFizkI9EAUxi6RSSBV1CY7odHQc7OR838+mn1Ny5im0kIrIPI3j9iQQuknDlxnKTqrs
	wWxcEmtJ18eUzw/QQA9dR7rtEq2delJhzuY827t/W1JfZOUijsdmLifWtQr2lu8vDFHx6XAPPU9
	aZ+KoAK5Bwk7Nr5aQ9pW24L/TwHizIUdRXeCtxIQvl1sgsXwxfCb1g+FuHMNcGhEOf9PRAQ1dHp
	58dbUMbv5OZcZ6fhTIRA1ReAlYE+P19kZpv8vBFjwvNaKr9XKxUUgh2V31kY42ElHyoO3Wjdirx
	tLvcoFA0PiWjI/ZdHHMPiU2yHqbNKupUyHWJMo8NrJjiGp6E2HpJMFYXST4FZvG+3j93fS3W2vQ
	OWN/ON6JntW+VNM8prkfxxMFChyZYaH4CSMMk=
X-Received: by 2002:a05:600c:a009:b0:475:dd9a:f791 with SMTP id 5b1f17b1804b1-4801eb0ef0bmr149442675e9.28.1768906625125;
        Tue, 20 Jan 2026 02:57:05 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1563:d000:1067:f6c4:3bf8:ea8a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801fe67780sm99418105e9.16.2026.01.20.02.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 02:57:04 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 20 Jan 2026 11:54:47 +0100
Message-ID: <20260120105655.7134-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120105655.7134-1-christian.koenig@amd.com>
References: <20260120105655.7134-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 5C04F4014A
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.44:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.44:from];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DNSWL_BLOCKED(0.00)[2a00:e180:1563:d000:1067:f6c4:3bf8:ea8a:received];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: CV3HA4AYXMEA3LF7QNUNTEB7ZUGDA7CW
X-Message-ID-Hash: CV3HA4AYXMEA3LF7QNUNTEB7ZUGDA7CW
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 8/9] dma-buf: use inline lock for the dma-fence-array
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CV3HA4AYXMEA3LF7QNUNTEB7ZUGDA7CW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

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
