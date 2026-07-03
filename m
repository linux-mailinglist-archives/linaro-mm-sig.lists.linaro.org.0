Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v5fHDfhvVmo55gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:20:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A47D575757C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:20:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=pass (policy=none) header.from=linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AAD07404D4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:20:54 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id E0A87400F5
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Jul 2026 14:16:41 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-493b7612475so5979765e9.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Jul 2026 07:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783088201; x=1783693001; darn=lists.linaro.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lskiCzL04/SeK1/iyp8dzWHm0r0N5RaxkUMlmtlc8uk=;
        b=j6O0D6NyYHOoeyfgqFeNcT4UdIhWb4c+9p7/h0hUdEVJEwBSaSDbVs6A9qBfrDOtKz
         lJlyfn3Bk6GXv15vxxyU24C4KFppJPIjar7bE07XwfI/obYR9ahN+GOHX99SNnhNww90
         haZYXrImDYERKxU7UOPHkgmRQBmUZecUXXxIOq7Jn50pR/4WVfNEoBTCD7THdlQTbYh6
         eNDjsnF1aKbb9d2vMAOgnO/d5SS+FzOpja2O05RcFwy2342P2dukjEZkbVILMW/0jT+V
         LC+AiBTmFXRIaEUXB9BjB/w7tguy76NDEXb4CRqfVfbECQ5vkBLictWg3ozFvw9Qtrny
         JBXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783088201; x=1783693001;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lskiCzL04/SeK1/iyp8dzWHm0r0N5RaxkUMlmtlc8uk=;
        b=l5dti909vCHOs6AA2mjMfaTU90w1cDrCzV4lQQFOOYRl+qN6BQuj2EnAIatIzfp+Ly
         YXW4vQGaDojtz7NOjZARmktwGcZwawN+J/lF+lQfYn7UgmtsTm603h0m+cMlVaH5wMJs
         crnwjNljXqmVlnZOP8hQdrFVhA1NtguZRlKIklMDYggAN7//EQOTJ0J98ppWSBR+/84W
         Pigo6Z9wn/B4z6uVq5FAE0myYgV4yWnTQ35DZxpy+XwbjqgapkAophlFlKXGXFAdk5fh
         1/8oNgNTnFODzAJHC/mtm0bIPFCQpGyWwgBEiXCRH5LTiIDytsYtc/kUEFvrQtKgsuqy
         l6eg==
X-Forwarded-Encrypted: i=1; AFNElJ+DZQNi78GQGwOeY1QPb6xwdf0BRn/0TOXU/E9YNxBHmJfKOoNzP7+ZKlJHP+cRDANEgOA8kH/QChNX8Ug7@lists.linaro.org
X-Gm-Message-State: AOJu0Yx9OmbYxlvemD2pkX4XepegfH06cGCAG1zi3xgiVBH0XEUmuKL/
	PWmE1OBDW8L8WuEBuLO0JNCiNosiNtLABBqNo/VYNRcafgSiqH6iZaY2iHelorBgRTZr2A==
X-Gm-Gg: AfdE7cnri7e4hFlaBykB4rPtMhaM89EcKLnozsHcE9I4EsWH0y2SCVucJ9q1Un8f8p6
	u/ez2PIRtMyI4p4A59nCR0RkOmsjDXT9drA0N2cOsi28pdN/OuVrACtTjv1ep0d+2z25zpOE1JW
	tu3xpAvIt4bRdTZj/3KgB8APgLUpGpxeWqo+50Aw2Jm0ezOQez7azyaGFUmxIEY1osDPY9VYYxw
	eWS8KPfIuOJvu7be0wxa94g32FrDIQ0GbAfqda8xjJ4/9mH614q/GcW520JL5lxRgmEJ80av+Pz
	3O/rinTAUsaKvdWbbw4LxsWqAWSqELhOq92SIUlO5CnHqHPFsfyMhpkwSDPxNPgq6i9RTds60XC
	jHoDX5iupcDBCgwWF7IQNjnjWqBtEcfAD66veyYZ9cxd1lnHTIWtZMSgzjWYIpZgA6nar02fvo3
	uLOqGATyPOrx/xCaqwi8JxjNFiQ4TGbR335S13/GbqFvwO3oR1jm/qtvIsnozCRns=
X-Received: by 2002:a05:600c:4194:b0:493:b764:ff98 with SMTP id 5b1f17b1804b1-493d0f100c3mr517275e9.11.1783088200711;
        Fri, 03 Jul 2026 07:16:40 -0700 (PDT)
Received: from ta2.c.googlers.com (214.8.78.34.bc.googleusercontent.com. [34.78.8.214])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493cce11497sm56004595e9.12.2026.07.03.07.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 07:16:40 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 03 Jul 2026 14:16:36 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20260703-5-15-dma-fence-unwrap-v1-1-0cf644bc501f@linaro.org>
X-B4-Tracking: v=1; b=H4sIAETER2oC/x3MSQqAMAxA0atI1gZincCriIvQppqFVVocQLy7x
 eVb/P9AkqiSYCgeiHJq0i1kVGUBduEwC6rLBkOmo55qbLFq0a2MXoIVPMIVeUfyDXeWasfeQG7
 3KF7v/ztO7/sB/HMeWmcAAAA=
X-Change-ID: 20260703-5-15-dma-fence-unwrap-0f4a6c03daf2
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Sasha Levin <sashal@kernel.org>, Alex Deucher <alexander.deucher@amd.com>,
 Yunxiang Li <Yunxiang.Li@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783088200; l=6233;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=IoBDA9RGNCrEvq0FVmsK4Z45OhW+Q/oVyDeW5CmzsEk=;
 b=bXpjW/Wws+hGcp56bVJAO0VTeqV6NGPVaFHSi0ulYSZHMsW6kJiBJ8BRP6pFh3jm63Qunv+yE
 F57tc7/d0YOA6VZ/8RTBQP80J9o3N22CnarbId+FauxgboFRvWFStiO
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=
X-Spamd-Bar: ----
X-MailFrom: tudor.ambarus@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EEWEHKA3272TDJFEZL46QJ3HSTLHPBJE
X-Message-ID-Hash: EEWEHKA3272TDJFEZL46QJ3HSTLHPBJE
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:17:03 +0000
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, peter.griffin@linaro.org, andre.draszik@linaro.org, jyescas@google.com, kernel-team@android.com, Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: remove unused dma-fence-unwrap.c (stable/linux-5.15.y only)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EEWEHKA3272TDJFEZL46QJ3HSTLHPBJE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.09 / 15.00];
	DATE_IN_PAST(1.00)[267];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[tudor.ambarus@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:gustavo@padovan.org,m:christian.koenig@amd.com,m:sashal@kernel.org,m:alexander.deucher@amd.com,m:Yunxiang.Li@amd.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:peter.griffin@linaro.org,m:andre.draszik@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,m:tudor.ambarus@linaro.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tudor.ambarus@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:from_mime,linaro.org:email,linaro.org:mid,amd.com:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A47D575757C

VGhlIGZpbGUgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYyB3YXMgaW5jb3JyZWN0
bHkgYWRkZWQgdG8NCnRoZSA1LjE1Lnkgc3RhYmxlIGJyYW5jaCBpbiBjb21taXQgNGU4MmI5YzEx
ZDNjICgiZG1hLWJ1ZjogYWRkDQpkbWFfZmVuY2VfdGltZXN0YW1wIGhlbHBlciIpIGFzIGEgbmV3
IGZpbGUsIGJ1dCBpdCB3YXMgbmV2ZXIgZW5hYmxlZCBpbg0KdGhlIE1ha2VmaWxlLCBhbmQgaXRz
IGhlYWRlciBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaCB3YXMgbm90DQpwcmVzZW50
LCBtYWtpbmcgaXQgdW5jb21waWxhYmxlLg0KDQpBIGZ1bGwgcmV2ZXJ0IG9mIGNvbW1pdCA0ZTgy
YjljMTFkM2MgKCJkbWEtYnVmOiBhZGQgZG1hX2ZlbmNlX3RpbWVzdGFtcA0KaGVscGVyIikgaXMg
bm90IGRlc2lyYWJsZSBiZWNhdXNlIHRoYXQgY29tbWl0IGFsc28gaW50cm9kdWNlZCB0aGUgdmFs
aWQNCmRtYV9mZW5jZV90aW1lc3RhbXAoKSBoZWxwZXIgYW5kIGZpeGVkIGxlZ2l0aW1hdGUgdGlt
ZXN0YW1wIHJhY2UNCndpbmRvd3MgaW4gZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jIGFuZA0K
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMuDQoNClNpbmNlIHRoZXJlIGFy
ZSBubyB1c2VycyBvZiBkbWEtZmVuY2UtdW53cmFwIGluIHRoZSA1LjE1LnkgYnJhbmNoLA0KcmVt
b3ZlIHRoZSB1bnVzZWQgZmlsZSB0byBjbGVhbiB1cCB0aGUgdHJlZSBhbmQgYXZvaWQgY29uZnVz
aW9uLg0KDQpGaXhlczogNGU4MmI5YzExZDNjICgiZG1hLWJ1ZjogYWRkIGRtYV9mZW5jZV90aW1l
c3RhbXAgaGVscGVyIikNClNpZ25lZC1vZmYtYnk6IFR1ZG9yIEFtYmFydXMgPHR1ZG9yLmFtYmFy
dXNAbGluYXJvLm9yZz4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMg
fCAxNzYgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KIDEgZmlsZSBjaGFu
Z2VkLCAxNzYgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLXVud3JhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0KZGVs
ZXRlZCBmaWxlIG1vZGUgMTAwNjQ0DQppbmRleCA2MjhhZjUxYzgxYWYuLjAwMDAwMDAwMDAwMA0K
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0KKysrIC9kZXYvbnVsbA0K
QEAgLTEsMTc2ICswLDAgQEANCi0vLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1v
bmx5DQotLyoNCi0gKiBkbWEtZmVuY2UtdXRpbDogbWlzYyBmdW5jdGlvbnMgZm9yIGRtYV9mZW5j
ZSBvYmplY3RzDQotICoNCi0gKiBDb3B5cmlnaHQgKEMpIDIwMjIgQWR2YW5jZWQgTWljcm8gRGV2
aWNlcywgSW5jLg0KLSAqIEF1dGhvcnM6DQotICoJQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPg0KLSAqLw0KLQ0KLSNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UuaD4N
Ci0jaW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLWFycmF5Lmg+DQotI2luY2x1ZGUgPGxpbnV4L2Rt
YS1mZW5jZS1jaGFpbi5oPg0KLSNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UtdW53cmFwLmg+DQot
I2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4NCi0NCi0vKiBJbnRlcm5hbCBoZWxwZXIgdG8gc3RhcnQg
bmV3IGFycmF5IGl0ZXJhdGlvbiwgZG9uJ3QgdXNlIGRpcmVjdGx5ICovDQotc3RhdGljIHN0cnVj
dCBkbWFfZmVuY2UgKg0KLV9fZG1hX2ZlbmNlX3Vud3JhcF9hcnJheShzdHJ1Y3QgZG1hX2ZlbmNl
X3Vud3JhcCAqY3Vyc29yKQ0KLXsNCi0JY3Vyc29yLT5hcnJheSA9IGRtYV9mZW5jZV9jaGFpbl9j
b250YWluZWQoY3Vyc29yLT5jaGFpbik7DQotCWN1cnNvci0+aW5kZXggPSAwOw0KLQlyZXR1cm4g
ZG1hX2ZlbmNlX2FycmF5X2ZpcnN0KGN1cnNvci0+YXJyYXkpOw0KLX0NCi0NCi0vKioNCi0gKiBk
bWFfZmVuY2VfdW53cmFwX2ZpcnN0IC0gcmV0dXJuIHRoZSBmaXJzdCBmZW5jZSBmcm9tIGZlbmNl
IGNvbnRhaW5lcnMNCi0gKiBAaGVhZDogdGhlIGVudHJ5cG9pbnQgaW50byB0aGUgY29udGFpbmVy
cw0KLSAqIEBjdXJzb3I6IGN1cnJlbnQgcG9zaXRpb24gaW5zaWRlIHRoZSBjb250YWluZXJzDQot
ICoNCi0gKiBVbndyYXBzIHBvdGVudGlhbCBkbWFfZmVuY2VfY2hhaW4vZG1hX2ZlbmNlX2FycmF5
IGNvbnRhaW5lcnMgYW5kIHJldHVybiB0aGUNCi0gKiBmaXJzdCBmZW5jZS4NCi0gKi8NCi1zdHJ1
Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfdW53cmFwX2ZpcnN0KHN0cnVjdCBkbWFfZmVuY2UgKmhl
YWQsDQotCQkJCQkgc3RydWN0IGRtYV9mZW5jZV91bndyYXAgKmN1cnNvcikNCi17DQotCWN1cnNv
ci0+Y2hhaW4gPSBkbWFfZmVuY2VfZ2V0KGhlYWQpOw0KLQlyZXR1cm4gX19kbWFfZmVuY2VfdW53
cmFwX2FycmF5KGN1cnNvcik7DQotfQ0KLUVYUE9SVF9TWU1CT0xfR1BMKGRtYV9mZW5jZV91bndy
YXBfZmlyc3QpOw0KLQ0KLS8qKg0KLSAqIGRtYV9mZW5jZV91bndyYXBfbmV4dCAtIHJldHVybiB0
aGUgbmV4dCBmZW5jZSBmcm9tIGEgZmVuY2UgY29udGFpbmVycw0KLSAqIEBjdXJzb3I6IGN1cnJl
bnQgcG9zaXRpb24gaW5zaWRlIHRoZSBjb250YWluZXJzDQotICoNCi0gKiBDb250aW51ZSB1bndy
YXBwaW5nIHRoZSBkbWFfZmVuY2VfY2hhaW4vZG1hX2ZlbmNlX2FycmF5IGNvbnRhaW5lcnMgYW5k
IHJldHVybg0KLSAqIHRoZSBuZXh0IGZlbmNlIGZyb20gdGhlbS4NCi0gKi8NCi1zdHJ1Y3QgZG1h
X2ZlbmNlICpkbWFfZmVuY2VfdW53cmFwX25leHQoc3RydWN0IGRtYV9mZW5jZV91bndyYXAgKmN1
cnNvcikNCi17DQotCXN0cnVjdCBkbWFfZmVuY2UgKnRtcDsNCi0NCi0JKytjdXJzb3ItPmluZGV4
Ow0KLQl0bXAgPSBkbWFfZmVuY2VfYXJyYXlfbmV4dChjdXJzb3ItPmFycmF5LCBjdXJzb3ItPmlu
ZGV4KTsNCi0JaWYgKHRtcCkNCi0JCXJldHVybiB0bXA7DQotDQotCWN1cnNvci0+Y2hhaW4gPSBk
bWFfZmVuY2VfY2hhaW5fd2FsayhjdXJzb3ItPmNoYWluKTsNCi0JcmV0dXJuIF9fZG1hX2ZlbmNl
X3Vud3JhcF9hcnJheShjdXJzb3IpOw0KLX0NCi1FWFBPUlRfU1lNQk9MX0dQTChkbWFfZmVuY2Vf
dW53cmFwX25leHQpOw0KLQ0KLS8qIEltcGxlbWVudGF0aW9uIGZvciB0aGUgZG1hX2ZlbmNlX21l
cmdlKCkgbWFyY28sIGRvbid0IHVzZSBkaXJlY3RseSAqLw0KLXN0cnVjdCBkbWFfZmVuY2UgKl9f
ZG1hX2ZlbmNlX3Vud3JhcF9tZXJnZSh1bnNpZ25lZCBpbnQgbnVtX2ZlbmNlcywNCi0JCQkJCSAg
IHN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZXMsDQotCQkJCQkgICBzdHJ1Y3QgZG1hX2ZlbmNlX3Vu
d3JhcCAqaXRlcikNCi17DQotCXN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKnJlc3VsdDsNCi0Jc3Ry
dWN0IGRtYV9mZW5jZSAqdG1wLCAqKmFycmF5Ow0KLQlrdGltZV90IHRpbWVzdGFtcDsNCi0JdW5z
aWduZWQgaW50IGk7DQotCXNpemVfdCBjb3VudDsNCi0NCi0JY291bnQgPSAwOw0KLQl0aW1lc3Rh
bXAgPSBuc190b19rdGltZSgwKTsNCi0JZm9yIChpID0gMDsgaSA8IG51bV9mZW5jZXM7ICsraSkg
ew0KLQkJZG1hX2ZlbmNlX3Vud3JhcF9mb3JfZWFjaCh0bXAsICZpdGVyW2ldLCBmZW5jZXNbaV0p
IHsNCi0JCQlpZiAoIWRtYV9mZW5jZV9pc19zaWduYWxlZCh0bXApKSB7DQotCQkJCSsrY291bnQ7
DQotCQkJfSBlbHNlIHsNCi0JCQkJa3RpbWVfdCB0ID0gZG1hX2ZlbmNlX3RpbWVzdGFtcCh0bXAp
Ow0KLQ0KLQkJCQlpZiAoa3RpbWVfYWZ0ZXIodCwgdGltZXN0YW1wKSkNCi0JCQkJCXRpbWVzdGFt
cCA9IHQ7DQotCQkJfQ0KLQkJfQ0KLQl9DQotDQotCS8qDQotCSAqIElmIHdlIGNvdWxkbid0IGZp
bmQgYSBwZW5kaW5nIGZlbmNlIGp1c3QgcmV0dXJuIGEgcHJpdmF0ZSBzaWduYWxlZA0KLQkgKiBm
ZW5jZSB3aXRoIHRoZSB0aW1lc3RhbXAgb2YgdGhlIGxhc3Qgc2lnbmFsZWQgb25lLg0KLQkgKi8N
Ci0JaWYgKGNvdW50ID09IDApDQotCQlyZXR1cm4gZG1hX2ZlbmNlX2FsbG9jYXRlX3ByaXZhdGVf
c3R1Yih0aW1lc3RhbXApOw0KLQ0KLQlhcnJheSA9IGttYWxsb2NfYXJyYXkoY291bnQsIHNpemVv
ZigqYXJyYXkpLCBHRlBfS0VSTkVMKTsNCi0JaWYgKCFhcnJheSkNCi0JCXJldHVybiBOVUxMOw0K
LQ0KLQkvKg0KLQkgKiBUaGlzIHRyYXNoZXMgdGhlIGlucHV0IGZlbmNlIGFycmF5IGFuZCB1c2Vz
IGl0IGFzIHBvc2l0aW9uIGZvciB0aGUNCi0JICogZm9sbG93aW5nIG1lcmdlIGxvb3AuIFRoaXMg
d29ya3MgYmVjYXVzZSB0aGUgZG1hX2ZlbmNlX21lcmdlKCkNCi0JICogd3JhcHBlciBtYWNybyBp
cyBjcmVhdGluZyB0aGlzIHRlbXBvcmFyeSBhcnJheSBvbiB0aGUgc3RhY2sgdG9nZXRoZXINCi0J
ICogd2l0aCB0aGUgaXRlcmF0b3JzLg0KLQkgKi8NCi0JZm9yIChpID0gMDsgaSA8IG51bV9mZW5j
ZXM7ICsraSkNCi0JCWZlbmNlc1tpXSA9IGRtYV9mZW5jZV91bndyYXBfZmlyc3QoZmVuY2VzW2ld
LCAmaXRlcltpXSk7DQotDQotCWNvdW50ID0gMDsNCi0JZG8gew0KLQkJdW5zaWduZWQgaW50IHNl
bDsNCi0NCi1yZXN0YXJ0Og0KLQkJdG1wID0gTlVMTDsNCi0JCWZvciAoaSA9IDA7IGkgPCBudW1f
ZmVuY2VzOyArK2kpIHsNCi0JCQlzdHJ1Y3QgZG1hX2ZlbmNlICpuZXh0Ow0KLQ0KLQkJCXdoaWxl
IChmZW5jZXNbaV0gJiYgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlc1tpXSkpDQotCQkJCWZl
bmNlc1tpXSA9IGRtYV9mZW5jZV91bndyYXBfbmV4dCgmaXRlcltpXSk7DQotDQotCQkJbmV4dCA9
IGZlbmNlc1tpXTsNCi0JCQlpZiAoIW5leHQpDQotCQkJCWNvbnRpbnVlOw0KLQ0KLQkJCS8qDQot
CQkJICogV2UgY2FuJ3QgZ3VhcmFudGVlIHRoYXQgaW5wdXRlIGZlbmNlcyBhcmUgb3JkZXJlZCBi
eQ0KLQkJCSAqIGNvbnRleHQsIGJ1dCBpdCBpcyBzdGlsbCBxdWl0ZSBsaWtlbHkgd2hlbiB0aGlz
DQotCQkJICogZnVuY3Rpb24gaXMgdXNlZCBtdWx0aXBsZSB0aW1lcy4gU28gYXR0ZW1wdCB0byBv
cmRlcg0KLQkJCSAqIHRoZSBmZW5jZXMgYnkgY29udGV4dCBhcyB3ZSBwYXNzIG92ZXIgdGhlbSBh
bmQgbWVyZ2UNCi0JCQkgKiBmZW5jZXMgd2l0aCB0aGUgc2FtZSBjb250ZXh0Lg0KLQkJCSAqLw0K
LQkJCWlmICghdG1wIHx8IHRtcC0+Y29udGV4dCA+IG5leHQtPmNvbnRleHQpIHsNCi0JCQkJdG1w
ID0gbmV4dDsNCi0JCQkJc2VsID0gaTsNCi0NCi0JCQl9IGVsc2UgaWYgKHRtcC0+Y29udGV4dCA8
IG5leHQtPmNvbnRleHQpIHsNCi0JCQkJY29udGludWU7DQotDQotCQkJfSBlbHNlIGlmIChkbWFf
ZmVuY2VfaXNfbGF0ZXIodG1wLCBuZXh0KSkgew0KLQkJCQlmZW5jZXNbaV0gPSBkbWFfZmVuY2Vf
dW53cmFwX25leHQoJml0ZXJbaV0pOw0KLQkJCQlnb3RvIHJlc3RhcnQ7DQotCQkJfSBlbHNlIHsN
Ci0JCQkJZmVuY2VzW3NlbF0gPSBkbWFfZmVuY2VfdW53cmFwX25leHQoJml0ZXJbc2VsXSk7DQot
CQkJCWdvdG8gcmVzdGFydDsNCi0JCQl9DQotCQl9DQotDQotCQlpZiAodG1wKSB7DQotCQkJYXJy
YXlbY291bnQrK10gPSBkbWFfZmVuY2VfZ2V0KHRtcCk7DQotCQkJZmVuY2VzW3NlbF0gPSBkbWFf
ZmVuY2VfdW53cmFwX25leHQoJml0ZXJbc2VsXSk7DQotCQl9DQotCX0gd2hpbGUgKHRtcCk7DQot
DQotCWlmIChjb3VudCA9PSAwKSB7DQotCQl0bXAgPSBkbWFfZmVuY2VfYWxsb2NhdGVfcHJpdmF0
ZV9zdHViKGt0aW1lX2dldCgpKTsNCi0JCWdvdG8gcmV0dXJuX3RtcDsNCi0JfQ0KLQ0KLQlpZiAo
Y291bnQgPT0gMSkgew0KLQkJdG1wID0gYXJyYXlbMF07DQotCQlnb3RvIHJldHVybl90bXA7DQot
CX0NCi0NCi0JcmVzdWx0ID0gZG1hX2ZlbmNlX2FycmF5X2NyZWF0ZShjb3VudCwgYXJyYXksDQot
CQkJCQlkbWFfZmVuY2VfY29udGV4dF9hbGxvYygxKSwNCi0JCQkJCTEsIGZhbHNlKTsNCi0JaWYg
KCFyZXN1bHQpIHsNCi0JCXRtcCA9IE5VTEw7DQotCQlnb3RvIHJldHVybl90bXA7DQotCX0NCi0J
cmV0dXJuICZyZXN1bHQtPmJhc2U7DQotDQotcmV0dXJuX3RtcDoNCi0Ja2ZyZWUoYXJyYXkpOw0K
LQlyZXR1cm4gdG1wOw0KLX0NCi1FWFBPUlRfU1lNQk9MX0dQTChfX2RtYV9mZW5jZV91bndyYXBf
bWVyZ2UpOw0KDQotLS0NCmJhc2UtY29tbWl0OiBlY2VlZWM3OWRiYzY0NmQ2ZGFjZTQ5ZWQxYmEy
ZjY1NjY4M2Q1NTM3DQpjaGFuZ2UtaWQ6IDIwMjYwNzAzLTUtMTUtZG1hLWZlbmNlLXVud3JhcC0w
ZjRhNmMwM2RhZjINCg0KQmVzdCByZWdhcmRzLA0KLS0gDQpUdWRvciBBbWJhcnVzIDx0dWRvci5h
bWJhcnVzQGxpbmFyby5vcmc+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
