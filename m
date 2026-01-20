Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAFBD3C66E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 11:59:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56E513FDAE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 10:59:16 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 01A004015F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 10:57:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=TdNx5uJY;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47edd6111b4so47017265e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 02:57:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768906626; x=1769511426; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GLWyZeyXsbIZSumeJDMiBvdpxO3idF+WenF3yOzVdKw=;
        b=TdNx5uJYLDWi7KnHfvHJ/VZX/EiIuylzrNPWWMxRPs6PrbtWKINu3pKm+aXoegFuvD
         ThFVQ3Tynj9TSPXz9bL08isf1tciq9/WNde0lndq3cXZCpDSjOV9FSJl9XKOEL78qq9H
         VuU68Oxeg54gA5yWq7tPPKprkL7PRojSR6NG2lsNKBd7r250Jv/1DRsCIpUeu2iAychl
         2Xmebpmt5Kdtxd3KlZzORqRgwbiRjWXqNG3hAPK0Dlq0Iw0o9TG6z92KEfxzp0RYjNyH
         tonHOr7AbAx20zzW70V2TurrFDItdC1uzpvjkLjmNS4U5rbTxgWh3eI5yaSbNCvom6CH
         7aKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768906626; x=1769511426;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GLWyZeyXsbIZSumeJDMiBvdpxO3idF+WenF3yOzVdKw=;
        b=AVEzRGRA/P5yd2EG7AnqZu+19Eo3d8KRnYjHuIQtVvfOmg8mLCIzYKd0NED+BQDBcn
         o2yxrRGO7cdCuc9Lga0cFrxix4yysUlnpuKY8hHYCd0fOj2rU37wtFitLS/nkeuRfRQO
         twwG72KSjexuXzMQiF6Wnb20DOk3GrA2o/wkIDqgN/9Xus5hIJaep7UZiDL0KZ3ElkLG
         Ob4kjVGexl4YqESjJgqM0kRVcWDlK3EsO4SeP3czLmXHo3OaWe9T8fkz4Ll6RTlRr64E
         hPVFiAD1GwPG5maD0AQ28Y98quNwGhPKuah3spBoBYsTBJ6/xe5O/2YoZhc44KJXn4nX
         +6XA==
X-Forwarded-Encrypted: i=1; AJvYcCW+PnHllKrINLK9f6xkFiZZZbKOx3DAeNPEWnTMQBvhezZW2lAouZH96mSbMFBtyM5Q48Z834jOe3wOso3r@lists.linaro.org
X-Gm-Message-State: AOJu0YwFjHTw5zrOPpUSL3zY+qqbH2pQ6nSOz4Zo+iiJ7O3BxaAV43IH
	iticiNchGyopNe/uDN/3KnfTHUxpiqH/CnA047mn6vmaL5gEO7QeZgFB
X-Gm-Gg: AY/fxX7i5ttJkAe6BJKNPlbgndSi3ppT+IXF2NrcPt+0ypN2IgzmMAMicISwLsFFKOa
	rgsQLDujF/LmtGyFr7YiqjhWQiUGhC22FAlAb7gmB/Dp0FKOhM65f8+p2Ank2PmHg8Spz42ViBj
	2YwUjbOSOyniOgi+NPwTyjC4GGVydfWfr19tkP2YiSHOCdRlPhkhFSkCb7gBluAmRombHlxQfCh
	2TbhZuInhxgNF4ABcTMCiRW1IWsxT8K03AyeWsDCpuqM2zwIGe4Behvzxg1xArx6O/iL5jnrqdR
	SPuiytuNvPLKqhYxllzMYku9Twqsp+y/v86Ijl6vO7vrm7bMGHzNag1qm8AmmXp5hwk9wyac7Wq
	eyPa01No+kJmSChauYiFnTCih9Sz2Sk67n2pZSqcZrdpQGz1x0WdGimbsN9UA6dZX/5/qvv1492
	Q5NXcbJ0CBegZ7HZPC/6uUTHsK
X-Received: by 2002:a05:600d:644f:10b0:47b:da85:b9ef with SMTP id 5b1f17b1804b1-4801e2fef40mr157647125e9.16.1768906625921;
        Tue, 20 Jan 2026 02:57:05 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1563:d000:1067:f6c4:3bf8:ea8a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801fe67780sm99418105e9.16.2026.01.20.02.57.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 02:57:05 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 20 Jan 2026 11:54:48 +0100
Message-ID: <20260120105655.7134-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120105655.7134-1-christian.koenig@amd.com>
References: <20260120105655.7134-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 01A004015F
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.49:from];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DNSWL_BLOCKED(0.00)[2a00:e180:1563:d000:1067:f6c4:3bf8:ea8a:received,209.85.128.49:from];
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
Message-ID-Hash: GKYYPIC7JAGBFRDE6UHDFJ6QAUBXNPJZ
X-Message-ID-Hash: GKYYPIC7JAGBFRDE6UHDFJ6QAUBXNPJZ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 9/9] dma-buf: use inline lock for the dma-fence-chain
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GKYYPIC7JAGBFRDE6UHDFJ6QAUBXNPJZ/>
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
YS1mZW5jZS1jaGFpbi5jIHwgMyArLS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5o
ICAgfCAxIC0NCiAyIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygt
KQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jDQppbmRleCBhOGE5MGFjZjRmMzQuLmE3MDc3
OTJiNjAyNSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYw0K
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jDQpAQCAtMjQ1LDcgKzI0NSw2
IEBAIHZvaWQgZG1hX2ZlbmNlX2NoYWluX2luaXQoc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqY2hh
aW4sDQogCXN0cnVjdCBkbWFfZmVuY2VfY2hhaW4gKnByZXZfY2hhaW4gPSB0b19kbWFfZmVuY2Vf
Y2hhaW4ocHJldik7DQogCXVpbnQ2NF90IGNvbnRleHQ7DQogDQotCXNwaW5fbG9ja19pbml0KCZj
aGFpbi0+bG9jayk7DQogCXJjdV9hc3NpZ25fcG9pbnRlcihjaGFpbi0+cHJldiwgcHJldik7DQog
CWNoYWluLT5mZW5jZSA9IGZlbmNlOw0KIAljaGFpbi0+cHJldl9zZXFubyA9IDA7DQpAQCAtMjYx
LDcgKzI2MCw3IEBAIHZvaWQgZG1hX2ZlbmNlX2NoYWluX2luaXQoc3RydWN0IGRtYV9mZW5jZV9j
aGFpbiAqY2hhaW4sDQogCQkJc2Vxbm8gPSBtYXgocHJldi0+c2Vxbm8sIHNlcW5vKTsNCiAJfQ0K
IA0KLQlkbWFfZmVuY2VfaW5pdDY0KCZjaGFpbi0+YmFzZSwgJmRtYV9mZW5jZV9jaGFpbl9vcHMs
ICZjaGFpbi0+bG9jaywNCisJZG1hX2ZlbmNlX2luaXQ2NCgmY2hhaW4tPmJhc2UsICZkbWFfZmVu
Y2VfY2hhaW5fb3BzLCBOVUxMLA0KIAkJCSBjb250ZXh0LCBzZXFubyk7DQogDQogCS8qDQpkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtY2hhaW4uaCBiL2luY2x1ZGUvbGludXgv
ZG1hLWZlbmNlLWNoYWluLmgNCmluZGV4IDY4YzNjMWU0MTAxNC4uZDM5Y2U3YTJlNTk5IDEwMDY0
NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtY2hhaW4uaA0KKysrIGIvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UtY2hhaW4uaA0KQEAgLTQ2LDcgKzQ2LDYgQEAgc3RydWN0IGRtYV9mZW5j
ZV9jaGFpbiB7DQogCQkgKi8NCiAJCXN0cnVjdCBpcnFfd29yayB3b3JrOw0KIAl9Ow0KLQlzcGlu
bG9ja190IGxvY2s7DQogfTsNCiANCiANCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
