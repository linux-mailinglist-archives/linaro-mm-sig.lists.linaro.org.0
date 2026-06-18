Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OFagFFxfPWpq2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:03:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 023A66C7AC1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:03:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=pass (policy=none) header.from=linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A7C84439E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:03:23 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by lists.linaro.org (Postfix) with ESMTPS id 23F9440503
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2026 14:03:50 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-c07c246ad7bso81890466b.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2026 07:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1781791429; x=1782396229; darn=lists.linaro.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=38plZ0uTNBbwKeBUJYWbAXFzzu4qCG2nojxXWDV02QY=;
        b=QA01xgB1X4r+mMsp4kut7WJCNgDJrzPBbw8RrGXGXXhJgix0zGH3c1vClF6pi6qwrI
         UrGG94VoUawsk8Io3TmpmIYdn9PYmRq6nHvAw1mP6PZ9QE2BOXGeecFQwgXUNNXrUA2S
         AwBa5Q7uiX3ZrWiTRQKBGW0Fw4DDcGsXw2PAmN48Fws2dLG5lE+yShfgaDn4coKXAXHZ
         8EhTNp9IExJw3Ly+2FB7oHVUY/cLU3mSdzYDOmwdXIe99E4spUp+k1w0n6atN4aHz81+
         8AEb6+7Is2Q98Q3NXR4PQpVDSj1YzuY2VQOrY/Ph7sLkev5Z6pwtB6CI5VIgKfYRlFT0
         WymQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781791429; x=1782396229;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=38plZ0uTNBbwKeBUJYWbAXFzzu4qCG2nojxXWDV02QY=;
        b=B6rE5zoBJsX44RPgKJnNimiUyixcFNK/bYjq3op3vYBRv22KQTgRthPusv97+fpdIs
         GOX+N5/EOMIikXGgThHxUGBI4rrgJKl9lvemTpRcDOFXB23nnbGzQknasBbHJfYm3nEq
         HwNziga+XXvhKtdQJlhlTES1aupfyriuBE6pg+c90oFyqWagQlpn+KYBUSnZWTei6EMw
         BE1Q6PDDtDCYvE1itrT9ioUGvfPvdTfuAPsUQeQcQI6AIyVSUEVwMCYS+F5JQ3fZpNkD
         wL42F2DfMopJXK8XQpUXjA35RLbSE3PquQraFDjlyd2iKyu5VCZcwMCRRhBMUq7SPDWv
         w9nA==
X-Forwarded-Encrypted: i=1; AFNElJ8Zu63ahNGW2j42KaGLfsRmCiOHhB3aL+mwJJ+XKcryeQMnKCMM6T7M17+SBsFy7yMxoS7sQN3RP2b1ahtP@lists.linaro.org
X-Gm-Message-State: AOJu0YxptTtQwhg/kextGU9Ipy5JxcYag5OJHL//26byyEh7N0/Jy4/J
	mZWzNoMu4DYPYRZDU9ntf+jUBkcj4hDzlY0ZKusQz1ie6O7h/06rRrsZpoW+7Zc4xR8YTpuFGvV
	aJVpGX6+1NQ==
X-Gm-Gg: AfdE7cka8iQY3icXBs0cDjFB3qnVZCgWAla+ynSsaSFt6fnMvJL/T5xoeQX74jnk1Mh
	+sdL2xIHZ9Vph3al+5lG/+NL324jjDVxlEgy9Jl2OP9oquJ3OSNnBbF/kC2gyNRe0bbL9iagKKd
	VTDMupfuDy13DpEiQ3UtE8RcehbVSOqcEabgwjc9ez50zVYphItSKj1I7vlCK55AzMXqcgAHmNJ
	pV/WZ3REQxnDNQgGgzZe+MAnJNF2zrFz5TqvvDDu6yMxV+fD9cFB3pWaqg7KJ2e+iuwE/v+9zOg
	Vmhys4g5h/T7ZCYRiMjXjq69/pUenQn6SWS1kS4xQ5agknGQuRrwXMxiOV3/xWmLrrQ41IUqCwM
	6G5lZzE+FVTwVGdeQcObOETAEhMSoz0Yhp4JXQ/oWoT5cshB7otfq6+I7hKkDoiXtWQ9yI/Iep1
	4fhAehePCzGR+Wbdgswr932s9XM34eRh1IxnZ3QOFlilGZ9MqmVv5TURYpVnI1vISqqMDdb9GRx
	hrAal0=
X-Received: by 2002:a17:907:970f:b0:c05:8586:da12 with SMTP id a640c23a62f3a-c07c81d1871mr124087466b.50.1781791428476;
        Thu, 18 Jun 2026 07:03:48 -0700 (PDT)
Received: from puffmais2.c.googlers.com (181.179.204.35.bc.googleusercontent.com. [35.204.179.181])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb9014501sm973334366b.60.2026.06.18.07.03.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 07:03:47 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 18 Jun 2026 15:03:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20260618-linux-drm_crtc_fix2-v1-1-c03e77b36f34@linaro.org>
X-B4-Tracking: v=1; b=H4sIAMD6M2oC/x2M7QpAQBAAX0X725Xb85VXkXSdxRZHe0jJu7v8n
 KmZBwIJU4AmeUDo4sCbj6DTBNxs/USKh8iAGZZZqWu1sD9vNcjaOzlcP/KNCo2tnClym2uEWO5
 C0f/XtnvfD1Lv8uZlAAAA
X-Change-ID: 20260618-linux-drm_crtc_fix2-23a7c354a412
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Stanner <phasta@kernel.org>
X-Mailer: b4 0.14.3
X-Spamd-Bar: ----
X-MailFrom: andre.draszik@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XTPOJACWXBYZ4WMPMY33GDQMI3D4FW7R
X-Message-ID-Hash: XTPOJACWXBYZ4WMPMY33GDQMI3D4FW7R
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:03:03 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com, =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/drm_crtc: fix race with dma_fence_signal() in ::get_driver_name()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XTPOJACWXBYZ4WMPMY33GDQMI3D4FW7R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.09 / 15.00];
	DATE_IN_PAST(1.00)[170];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:phasta@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,m:andre.draszik@linaro.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,igalia.com,collabora.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,linaro.org:mid,linaro.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 023A66C7AC1

U2luY2UgY29tbWl0IDU0MWM4ZjI0NjhiOSAoImRtYS1idWY6IGRldGFjaCBmZW5jZSBvcHMgb24g
c2lnbmFsIHYzIiksDQpJJ20gc2VlaW5nIHRoZSBCVUdfT04oKSB0cmlnZ2VyaW5nIGluIGRybV9j
cnRjJ3MgZmVuY2VfdG9fY3J0YygpIHZpYQ0KZHJtX2NydGNfZmVuY2VfZ2V0X2RyaXZlcl9uYW1l
KCkgcmVndWxhcmx5Og0KDQogICAgQ2FsbCB0cmFjZToNCiAgICAgcGFuaWMrMHg1OC8weDVjDQog
ICAgIGRpZSsweDE2MC8weDE3OA0KICAgICBidWdfYnJrX2hhbmRsZXIrMHg3MC8weGE0DQogICAg
IGNhbGxfZWwxX2JyZWFrX2hvb2srMHgzYy8weDFhMA0KICAgICBkb19lbDFfYnJrNjQrMHgyNC8w
eDc0DQogICAgIGVsMV9icms2NCsweDM0LzB4NTQNCiAgICAgZWwxaF82NF9zeW5jX2hhbmRsZXIr
MHg4MC8weGZjDQogICAgIGVsMWhfNjRfc3luYysweDg0LzB4ODgNCiAgICAgZHJtX2NydGNfZmVu
Y2VfZ2V0X2RyaXZlcl9uYW1lKzB4NjAvMHg2OCAoUCkNCiAgICAgc3luY19maWxlX2dldF9uYW1l
KzB4MTg0LzB4NDVjDQogICAgIHN5bmNfZmlsZV9pb2N0bCsweDQwNC8weGY3MA0KICAgICBfX2Fy
bTY0X3N5c19pb2N0bCsweDEyNC8weDFkYw0KDQpUaGlzIGxvb2tzIHRvIGJlIGNhdXNlZCBieSBh
IGNvZGUgZmxvdyBzaW1pbGFyIHRvIHRoZSBmb2xsb3dpbmc6DQoNCisrKyBzbmlwICsrKw0KdGhy
ZWFkIEEgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRocmVhZCBCDQoNCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBpb2N0bChTWU5DX0lPQ19GSUxFX0lORk8pDQogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3luY19maWxlX2lvY3RsKCkNCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzeW5jX2ZpbGVfZ2V0X25hbWUoKQ0KZG1h
X2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKCkgIGRtYV9mZW5jZV9kcml2ZXJfbmFtZSgp
DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHMgPSByY3VfZGVyZWZl
cmVuY2UoZmVuY2UtPm9wcykNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGlmICghZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZygpKQ0KICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBvcHMtPmdldF9kcml2ZXJfbmFtZShmZW5jZSkgaS5lLg0K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkcm1fY3J0Y19mZW5jZV9n
ZXRfZHJpdmVyX25hbWUoKQ0KdGVzdF9hbmRfc2V0X2JpdChTSUdOQUxFRCkNClJDVV9JTklUX1BP
SU5URVIoZmVuY2UtPm9wcywgTlVMTCkNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBkcm1fY3J0Y19mZW5jZV9nZXRfZHJpdmVyX25hbWUoKQ0KICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgQlVHX09OKHJjdV9hY2Nlc3NfcG9pbnRlcihmZW5jZS0+b3Bz
KQ0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICE9ICZkcm1f
Y3J0Y19mZW5jZV9vcHMpDQorKysgc25hcCArKysNCg0KSSBzZWUgdHdvIHdheXMgdG8gcmVzb2x2
ZSB0aGlzOg0KYSkgc2ltcGx5IGRyb3AgdGhlIEJVR19PTigpLiBJdCBjYW4gbm90IHdvcmsgYW55
bW9yZSBzaW5jZSBhYm92ZQ0KICAgY29tbWl0LCBhcyBpdCBpcyByYWN5IG5vdy4NCmIpIHBhc3Mg
dGhlIG9yaWdpbmFsICdvcHMnIHBvaW50ZXIgb2J0YWluZWQgaW4gZG1hX2ZlbmNlX2RyaXZlcl9u
YW1lKCkNCiAgIHRvIGFsbCBjYWxsZWVzLg0KDQpUaGlzIHBhdGNoIGltcGxlbWVudHMgb3B0aW9u
IGEpLCBhcyBiZWNhdXNlOg0KKiBJIGRvbid0IHNlZSBtdWNoIGJlbmVmaXQgaW4gcGFzc2luZyB0
aGUgZXh0cmEgcG9pbnRlciBqdXN0IGZvciB0aGlzDQogIEJVR19PTigpIHRvIHdvcmsuDQoqIFJl
cXVpcmluZyB0aGUgZG1hX2ZlbmNlX29wcyBpbiB0aG9zZSBjYWxsYmFja3MgaXMgYW4gaW1wbGVt
ZW50YXRpb24NCiAgZGV0YWlsIG9mIHRoZSBkcm1fY3J0YyBkcml2ZXIsIGFuZCB0aGVyZWZvcmUg
dXBwZXIgbGF5ZXJzIHNob3VsZG4ndA0KICBoYXZlIHRvIGNhcmUgYWJvdXQgdGhhdC4NCiogVGhl
IGV4aXN0ZW5jZSBvZiB0aGUgQlVHX09OKCkgZG9lc24ndCBhcHBlYXIgdG8gYmUgY29uc2lzdGVu
dCB3aXRoDQogIGltcGxlbWVudGF0aW9ucyBvZiA6OmdldF9kcml2ZXJfbmFtZSgpIG9yIDo6Z2V0
X3RpbWVsaW5lX25hbWUoKSBpbg0KICB0aGUgbWFqb3JpdHkgb2Ygb3RoZXIgRFJNIGRyaXZlcnMg
aW4gdGhlIGZpcnN0IHBsYWNlLiBUaG9zZSB0aGF0IGRvDQogIGhhdmUgYSBzaW1pbGFyIEJVR19P
TigpIChpOTE1LCB4ZSkgcHJvYmFibHkgYWxzbyBuZWVkIGFuIHVwZGF0ZQ0KICBzaW1pbGFyIHRv
IHRoaXMgcGF0Y2ggaGVyZSBidXQgSSdtIG5vdCBpbiBhIHBvc2l0aW9uIHRvIHRlc3QgdGhvc2Uu
DQoNCk5vdGUgdGhhdCB0aGUgYWRqYWNlbnQgZHJtX2NydGNfZmVuY2VfZ2V0X3RpbWVsaW5lX25h
bWUoKSBoYXMgdGhlIHNhbWUNCnByb2JsZW0gYW5kIGlzIGZpeGVkIGJ5IHRoaXMgcGF0Y2ggYXMg
d2VsbC4NCg0KRml4ZXM6IDU0MWM4ZjI0NjhiOSAoImRtYS1idWY6IGRldGFjaCBmZW5jZSBvcHMg
b24gc2lnbmFsIHYzIikNClNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFz
emlrQGxpbmFyby5vcmc+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2NydGMuYyB8IDExICsr
Ky0tLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMo
LSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Yy5jIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9jcnRjLmMNCmluZGV4IDYzZWFkOGJhNjc1Ni4uMzFjODYzNmU3NDY3IDEwMDY0
NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9jcnRjLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fY3J0Yy5jDQpAQCAtNzMsNiArNzMsOSBAQA0KICAqICZkcm1fbW9kZV9jb25maWdfZnVu
Y3MuYXRvbWljX2NoZWNrLg0KICAqLw0KIA0KKyNkZWZpbmUgZmVuY2VfdG9fY3J0YyhmKSBjb250
YWluZXJfb2YoKGYpLT5leHRlcm5fbG9jaywgXA0KKwkJCQkgICAgICBzdHJ1Y3QgZHJtX2NydGMs
IGZlbmNlX2xvY2spDQorDQogLyoqDQogICogZHJtX2NydGNfZnJvbV9pbmRleCAtIGZpbmQgdGhl
IHJlZ2lzdGVyZWQgQ1JUQyBhdCBhbiBpbmRleA0KICAqIEBkZXY6IERSTSBkZXZpY2UNCkBAIC0x
NTQsMTQgKzE1Nyw2IEBAIHN0YXRpYyB2b2lkIGRybV9jcnRjX2NyY19maW5pKHN0cnVjdCBkcm1f
Y3J0YyAqY3J0YykNCiAjZW5kaWYNCiB9DQogDQotc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVu
Y2Vfb3BzIGRybV9jcnRjX2ZlbmNlX29wczsNCi0NCi1zdGF0aWMgc3RydWN0IGRybV9jcnRjICpm
ZW5jZV90b19jcnRjKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KLXsNCi0JQlVHX09OKHJjdV9h
Y2Nlc3NfcG9pbnRlcihmZW5jZS0+b3BzKSAhPSAmZHJtX2NydGNfZmVuY2Vfb3BzKTsNCi0JcmV0
dXJuIGNvbnRhaW5lcl9vZihmZW5jZS0+ZXh0ZXJuX2xvY2ssIHN0cnVjdCBkcm1fY3J0YywgZmVu
Y2VfbG9jayk7DQotfQ0KLQ0KIHN0YXRpYyBjb25zdCBjaGFyICpkcm1fY3J0Y19mZW5jZV9nZXRf
ZHJpdmVyX25hbWUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQogew0KIAlzdHJ1Y3QgZHJtX2Ny
dGMgKmNydGMgPSBmZW5jZV90b19jcnRjKGZlbmNlKTsNCg0KLS0tDQpiYXNlLWNvbW1pdDogZTJj
YWUwMGMwNWQxOTY0OTFjMzE4MTk2NzkyMjk3ZjJkZmJhYTAyYw0KY2hhbmdlLWlkOiAyMDI2MDYx
OC1saW51eC1kcm1fY3J0Y19maXgyLTIzYTdjMzU0YTQxMg0KDQpCZXN0IHJlZ2FyZHMsDQotLSAN
CkFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+DQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
