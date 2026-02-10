Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KUtGaAHi2kdPQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 11:25:36 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B77119A21
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 11:25:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2C423F721
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 10:25:34 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by lists.linaro.org (Postfix) with ESMTPS id E67553F9B3
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 10:22:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=hwyhuGoA;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.47 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-4359228b7c6so2542382f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 02:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770718962; x=1771323762; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GLWyZeyXsbIZSumeJDMiBvdpxO3idF+WenF3yOzVdKw=;
        b=hwyhuGoAIvyiEaVp8Qc+dKYzEhnaYUdyCZVV+Qdx3AyfTjumUQl5sEEcPRBZSuOreo
         UpPfmF+BZDJ8ko0DjHObUe8Fu9GMvb9ZRh9bMko2pwxPXyoEJXeZzu2/wz9Jc0dEVpnZ
         9F1cdaY+lLfT6YfZguBUng1t8fUT1Rl0iES2R1XuveNS3i+1K1DI2U2EcHzLpl0Db8jJ
         PSbpCo9cJTGr4TVR6iw0ZULg+EGUWb8qm/uniNjpnN6JyuT37M7+O0y/bkcGm4TeOCH5
         YaaGelvrA1XXclrgpu2qjB10OWy5DAJr5LrlVSQqF0IYrt+2CsU8qzLUaJ2L+3dnFFCx
         sqdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770718962; x=1771323762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GLWyZeyXsbIZSumeJDMiBvdpxO3idF+WenF3yOzVdKw=;
        b=rerRh/KizRXOEo6+Fu7qcW9+R/IgkfsEuia2xuzcknv+emtMrr5QfuuJhYr3hBOkTk
         0Jj8myIpmEEPovwmln3L4Ie99cE/NNvb1ELtoIbL/g+ei9z5cmfZX7bgIRivyE50tC6i
         ZhiL04YGhYK7K/5uzDM/Ap3CHoabHjNpeDSpAKRZy2iTl6WPJUPSMF2OkmHdGDA9AhIz
         PjmOx0qHK6mbxw8nmsFjOy2kYoBjuftmqEOJH4MOJhurRrUKTQ6+LFoy9ViMJmbYEBMi
         o6Xw3AZizMPrPXQOAcum8DmWvQkjW+xwv5bTevZH7U3xldWzya/0FxgIrc0uFd4wCl9s
         EtGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBTVgygwL2su5mKFG51pteYgmk8qODlM6buCEKRog+te01joKlP/55UpfCEiVldt+9vHI4CBWMr1Kr+Qbg@lists.linaro.org
X-Gm-Message-State: AOJu0Yx/vun9QPCD/WXra1ZITb2PFB/68vW/DDGgeCszZwN7+1G5ksPe
	gMfafwHps7D5EUe8rRJWPraWJ21e5a7dHacpCYiUR+0+gTGf8J+zynsf
X-Gm-Gg: AZuq6aJ7Ns6ti2hfbxDoI7byljgA7tX4/pkGCdgXb6+AyjIGRg36mmhEIRvWmrW3VIQ
	8L886L9JFjl+anxgmlaoOzFnyi3ffK4L8MQKT9Nk5OEILDEcWofM679Ni2N3nEeu7aFu9Eoj9sY
	jHBhVXY8w1RuO1vgkWsB3CpXiOVtrT+SU4xCPbuErsrPyegAuP57gHl9AitribJy+75P/vkMqyu
	HGvyqSYR++btHUIghq13razPEUh/EiN6U+LiCozvjezXqneQMmiwxVXSxBQj6po7BLce3zEtHie
	mCuaM4KoL4hpXUIYanuT/s2pu5Q8mSNNPTEFMmoYr40FG9MieP4xzoBDPHEbJeWk8YPMESpGwwv
	49K9qE5n10obusGn/0MtCx8EEOa09crqgcTVmSaDKGvobRNBNo35T8merUCH286wxrbs2VIxtDm
	mA2vskgOfHnara/LWpoL/tg7xKKOI9n/sghe4b
X-Received: by 2002:a05:600c:6290:b0:47e:e78a:c834 with SMTP id 5b1f17b1804b1-48320226676mr231371165e9.34.1770718961647;
        Tue, 10 Feb 2026 02:22:41 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:6000:83ca:11f0:7e35:a75d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d8ebfsm81549605e9.2.2026.02.10.02.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 02:22:41 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 10 Feb 2026 11:02:03 +0100
Message-ID: <20260210102232.1642-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260210102232.1642-1-christian.koenig@amd.com>
References: <20260210102232.1642-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: SEC6VUPZNTXUZD2WXBRM54L3QYBI7K76
X-Message-ID-Hash: SEC6VUPZNTXUZD2WXBRM54L3QYBI7K76
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 8/8] dma-buf: use inline lock for the dma-fence-chain
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SEC6VUPZNTXUZD2WXBRM54L3QYBI7K76/>
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
X-Rspamd-Queue-Id: 01B77119A21
X-Rspamd-Action: no action

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
