Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADBED3C668
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 11:58:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34B4740168
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 10:58:50 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id 76B7D3FDB0
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 10:57:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Pf5Z1At+;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.43 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4801bc328easo43807165e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 02:57:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768906624; x=1769511424; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9F/asdx1RdQozRmoP01CvN+7ATqZls8uzpmMzLjSGbc=;
        b=Pf5Z1At+7pXD6mpNoJGgEC9mUliAYG/lJohM+b59EGgcBANmk625vE0IUOljNchK6G
         WS2gV1KFMPw2j1dWYsEEJpaMDSzL0Er8ejdNdjCn+wcbayG228P6XkiRELhWk0FmQol1
         2HcWiTczp9KXn+wT3quPj8GrCKqr2BMCyxpmekIDkOIuPm0WnK/o15ZbBdyU1TJNuoMG
         2Amx6JPEzOXl6ik/sLup0jfHsa76+NU8LVokjkwqJOHU1K+4s88pu17GZaHfZ65P+w0W
         caU8HK7GVXYKK3wzbtBlrNuYF4HNvtxzc7YMhx6Vj5bRkVpBZ/CblRDwfabmkqxiDBcG
         QuWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768906624; x=1769511424;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9F/asdx1RdQozRmoP01CvN+7ATqZls8uzpmMzLjSGbc=;
        b=KCU5HbSx3oTX7wRWF86AI5IVNtsKmcxftlGMfeSBEKQqCUE7XifG5DwmHVxcppY1yk
         R6L4JaAbxKmrmfgFdZpTiwnY4iTvBC9cU3B3KUnIMFoK+GN0K0GaP2WKQR/beGFdtCCV
         WFyY97/uWJpLZpJWz9hNacfFTA7p2eD7+Sxr0Y36qh7fsLIEqkeUkNppSRbts+zn+MeJ
         JDmtcOD1ILAHxfDApz97NgXC0irC3Zm547m3EsTMNnno0MlDSRwUSgctoAqCc3PR++O0
         oQShtD8xKGaDTZZF5qALntiX+VVMDohrvS1dWQ2mSsXbXo479CBZrtpor2KIQBtVZ/fF
         tS5w==
X-Forwarded-Encrypted: i=1; AJvYcCXVxQFEcTwGjJlv4zGDPPQ5jooxeEft93oHkE+2uiN18B4bGoH2GweSP8BH+D9NvMcP1xvFO3/e4RydNJbm@lists.linaro.org
X-Gm-Message-State: AOJu0Yzr9JnaBwRc56fwauR2t85QavktO5F/k5EDEiTtlvwNLHcTFwxS
	PO8AQ3Mthp5BzGP3VoWuZ3zngYmbmjUGh0BySYNizfKjj8ybPzynwLe8
X-Gm-Gg: AY/fxX6fCyGO1l2oAq0Pb/Jojrbrv5lPWVGwRcQCBcv+gVWFLskiOjVfsccLUbn17xD
	CZu0x5XYTcEH46A4QSeZhDiayclZoNwE9nJcDA17IED5JMPort82z54FXU0KkNiZEZJ4jZT/L8q
	kPGPEC6VE5fHLjrRONiJmAAzsAgghfq/p0B2Nh3nosEiaa0F3PCPc4ydjpme1OYjWU5O8nRHP0I
	f/Yp336IDbTdCfd+sCXM5rsk6wLzJvDcBQFHYdlnNzICTDVflBLsOsQ9Pjg/OT2FVAmbh/pjQN8
	me9evtCygTJqS4oKcX+FcMf1Ze0oOHVyXsuMQ6WGl4pHOC9MWhcHKPWJEUHpwK64yASofHWXX+8
	dnoLPTfp2ue+HtliETlOlXfJ6FazSCOuTvtW9WNokSFYpjCsLJBRYeAZCNXakWxmwTi2MFDPmel
	kKmuTYWJ4ys5Szd2o4LSt/RxZLnCZp8JASAUQ=
X-Received: by 2002:a05:600c:1552:b0:47e:e946:3a72 with SMTP id 5b1f17b1804b1-4801eb0e021mr177148745e9.27.1768906624397;
        Tue, 20 Jan 2026 02:57:04 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1563:d000:1067:f6c4:3bf8:ea8a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801fe67780sm99418105e9.16.2026.01.20.02.57.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 02:57:03 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 20 Jan 2026 11:54:46 +0100
Message-ID: <20260120105655.7134-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120105655.7134-1-christian.koenig@amd.com>
References: <20260120105655.7134-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 76B7D3FDB0
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.43:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.43:from];
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
Message-ID-Hash: R2VUWWBMEMIQBHC7VAZFUMVGVXD5Q3KP
X-Message-ID-Hash: R2VUWWBMEMIQBHC7VAZFUMVGVXD5Q3KP
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 7/9] dma-buf: use inline lock for the stub fence v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R2VUWWBMEMIQBHC7VAZFUMVGVXD5Q3KP/>
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
IGJ5dGVzIGZvciB0aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQoNCnYyOiBkcm9wIHVubmVjZXNzYXJ5
IGNoYW5nZXMNCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPg0KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpZ2FsaWEuY29tPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgMTIgKyst
LS0tLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25z
KC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWZlbmNlLmMNCmluZGV4IDM2ZmYwZTUwOThlZS4uMDNhMDlhY2RlYWVjIDEw
MDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQorKysgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLmMNCkBAIC0yNCw3ICsyNCw2IEBAIEVYUE9SVF9UUkFDRVBPSU5UX1NZ
TUJPTChkbWFfZmVuY2VfZW1pdCk7DQogRVhQT1JUX1RSQUNFUE9JTlRfU1lNQk9MKGRtYV9mZW5j
ZV9lbmFibGVfc2lnbmFsKTsNCiBFWFBPUlRfVFJBQ0VQT0lOVF9TWU1CT0woZG1hX2ZlbmNlX3Np
Z25hbGVkKTsNCiANCi1zdGF0aWMgREVGSU5FX1NQSU5MT0NLKGRtYV9mZW5jZV9zdHViX2xvY2sp
Ow0KIHN0YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNlIGRtYV9mZW5jZV9zdHViOw0KIA0KIC8qDQpAQCAt
MTIzLDEyICsxMjIsOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgZG1hX2Zl
bmNlX3N0dWJfb3BzID0gew0KIA0KIHN0YXRpYyBpbnQgX19pbml0IGRtYV9mZW5jZV9pbml0X3N0
dWIodm9pZCkNCiB7DQotCWRtYV9mZW5jZV9pbml0KCZkbWFfZmVuY2Vfc3R1YiwgJmRtYV9mZW5j
ZV9zdHViX29wcywNCi0JCSAgICAgICAmZG1hX2ZlbmNlX3N0dWJfbG9jaywgMCwgMCk7DQotDQor
CWRtYV9mZW5jZV9pbml0KCZkbWFfZmVuY2Vfc3R1YiwgJmRtYV9mZW5jZV9zdHViX29wcywgTlVM
TCwgMCwgMCk7DQogCXNldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQsDQog
CQkmZG1hX2ZlbmNlX3N0dWIuZmxhZ3MpOw0KLQ0KIAlkbWFfZmVuY2Vfc2lnbmFsKCZkbWFfZmVu
Y2Vfc3R1Yik7DQogCXJldHVybiAwOw0KIH0NCkBAIC0xNjAsMTEgKzE1Niw3IEBAIHN0cnVjdCBk
bWFfZmVuY2UgKmRtYV9mZW5jZV9hbGxvY2F0ZV9wcml2YXRlX3N0dWIoa3RpbWVfdCB0aW1lc3Rh
bXApDQogCWlmIChmZW5jZSA9PSBOVUxMKQ0KIAkJcmV0dXJuIE5VTEw7DQogDQotCWRtYV9mZW5j
ZV9pbml0KGZlbmNlLA0KLQkJICAgICAgICZkbWFfZmVuY2Vfc3R1Yl9vcHMsDQotCQkgICAgICAg
JmRtYV9mZW5jZV9zdHViX2xvY2ssDQotCQkgICAgICAgMCwgMCk7DQotDQorCWRtYV9mZW5jZV9p
bml0KGZlbmNlLCAmZG1hX2ZlbmNlX3N0dWJfb3BzLCBOVUxMLCAwLCAwKTsNCiAJc2V0X2JpdChE
TUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCwNCiAJCSZmZW5jZS0+ZmxhZ3MpOw0KIA0K
LS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
