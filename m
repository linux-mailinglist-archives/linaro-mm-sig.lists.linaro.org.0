Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7ghjMD1rTmphMQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 08 Jul 2026 17:22:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCA2727F13
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 08 Jul 2026 17:22:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=linaro.org header.s=google header.b=JWlPm81P;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7390C40AF1
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Jul 2026 15:22:36 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by lists.linaro.org (Postfix) with ESMTPS id 4F4923F7BA
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jul 2026 15:22:10 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-698bf053053so1470457a12.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Jul 2026 08:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783524129; x=1784128929; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LyC+FmbJe8AFV/pEnbxlDl/WDcANmupwyXjJcuF3JBk=;
        b=JWlPm81PifzibhJW90HZB11tesZ/bA82wJFMrUcYn+NUiuOpA9bAsuI/NqzYu/+N1z
         nJeSu3i3xfyMif1XM+6Xpbb2ErDiw5L2Tx3MBh/S1tnxS+ZbIHgVGUoCQE5zd1BR1PFG
         5+/jBsF/rU251BGoN0cbzhXDNigpxymoLeU5safwVaRZYhtNOl+Hs2jlGxXtrG6yqjSG
         PdTpJYRDI0+1sJtHo1hQ7OJVcKyYbN8cj7tF3VcUiBAABm4MAkDBFHkae8MYT2uQLJOq
         GoJAIdpbOh34jTU8YDHAGLFUR/iiDtyeK4tMxP9MaZDYbrM8c/0gKyjXWyyzI/R+G3jr
         rdjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783524129; x=1784128929;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LyC+FmbJe8AFV/pEnbxlDl/WDcANmupwyXjJcuF3JBk=;
        b=ad2N6PLUSX6O3ZiT22cTQgSRvqGPLWIHEbAC+raMMEhP2quRhm1+aym1k9rxECIwMn
         mFKav+KSA0RE56ZwIpUAiDXyHji+VI+xxvn2Tia5a/tdQT1Cj09OCrN8JtudwWHPV/FP
         cUGC9tzBurIFVIBJ/dlWBwiNtqzio2XARxQ043VohAO0NMbn73iN0Y1xLPaWueLl8ITs
         ZKxKlKrsGQ9bygTkX+xbawrV/1Xp738OI7kqlVATJby76ovBFsm9l44MpvfyFoITqoUs
         XUoxvK6nibA/iOYjjuHsRMh751SXYjS6hsM1hOZ30FYLziYkyykxVMZsxGcl0/A8RtQq
         Adgw==
X-Forwarded-Encrypted: i=1; AHgh+RqIKWUptoSYmIJbSvwsieiMNLJOyFNZOHfxT1rwoN4cewFn4a+oFMEy/m8WkzsddS3HVNx0Ch+cT5BOexrB@lists.linaro.org
X-Gm-Message-State: AOJu0YxsBK758H+KbAH17SajIitJtlJHCQgoc8VziG1Zh1Iq/AAvhT/o
	i9bkD8lp+DAdJsXK1aqd8B7mpnJ9hvftDOWY28VpoDOIjbf/FlNpooGWMDY1KTZR03FqIA==
X-Gm-Gg: AfdE7cl9s1qlSf7tMQ/GXMMLR2pyl2IkoizuBMgGqvrpkRJPCSo0OyS8VF5m3t/IOEs
	5iAlxHJvcxYAG5GCpDgJhhrioBryvpoCv0HVtY4nz28FbMsRHtufBip+6LYi0UU3SnvXhBQClSc
	w0Liik8cx76TXXrI8NL6TmpbkJgUn9pp9RVUbAXRdgqhmxe9/q3OpkFcmkg2Gheibv3NVsmAL5A
	zHw6CS1/BX7WXoUnCt7+sTd3bdDTvsqIscWZqUuAqaka0myGzJxH0S7PsKCOkyUEl3hX/TdmArN
	334Q8OC33vQhqW3cTJrfFoqKmIC4vQokvtJ+P2oEVaRwL/nPN8JpVpuloSpPc3+EQ6tPnxoUQ8v
	3AcF6uu+vHWj80J9ZboeaHGNYD2PSk9BCVStpq4hLp8Vah+vO7YqhVlE2Qn+8LlKZSpefbNAGN8
	WrKadKmUXVCJMqcE8tIVbYvPay8W9ZyysucNeXP97QL/S6RLobncF5Md75mtxkrVtZdPw+WYeVo
	DpUHl0=
X-Received: by 2002:a17:906:f58f:b0:c12:a992:a6d6 with SMTP id a640c23a62f3a-c15ce000110mr142620966b.23.1783524129106;
        Wed, 08 Jul 2026 08:22:09 -0700 (PDT)
Received: from puffmais2.c.googlers.com (181.179.204.35.bc.googleusercontent.com. [35.204.179.181])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15beb53b86sm213932966b.25.2026.07.08.08.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 08:22:08 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 08 Jul 2026 16:22:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20260708-linux-drm_crtc_fix2-v2-2-cf72be75d75a@linaro.org>
References: <20260708-linux-drm_crtc_fix2-v2-0-cf72be75d75a@linaro.org>
In-Reply-To: <20260708-linux-drm_crtc_fix2-v2-0-cf72be75d75a@linaro.org>
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
Message-ID-Hash: QMRHRYSNUZQU6A3VKPZODNXYBJRAID3R
X-Message-ID-Hash: QMRHRYSNUZQU6A3VKPZODNXYBJRAID3R
X-MailFrom: andre.draszik@linaro.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com, =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 2/2] drm/drm_crtc: fix race with dma_fence_signal() in ::get_driver_name()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QMRHRYSNUZQU6A3VKPZODNXYBJRAID3R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.91 / 15.00];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:phasta@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,m:andre.draszik@linaro.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,igalia.com,collabora.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:from_mime,linaro.org:email,linaro.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5CCA2727F13

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
DQoqIFVzaW5nIEJVRygpIGFuZCBmcmllbmRzIHRvIHRha2UgZG93biB0aGUgc3lzdGVtIGlzIGFu
IHVuYWNjZXB0YWJsZQ0KICB3YXkgdG8gaGFuZGxlIGEgZmFpbHVyZSBhcyBldmlkZW5jZWQgYnkg
bWFueSB0aHJlYWRzIG9uIExLTUwgYW5kIGFsc28NCiAgaW4gdGhlIGtlcm5lbCBjb2Rpbmcgc3R5
bGUuIEhlcmUsIHRoZSBjaGVjayB3YXMgcHJlc3VtYWJseSBhZGRlZCBmb3INCiAgZGV0ZWN0aW5n
IHdoZW4gc29tZXRoaW5nIHBhc3NlcyBhbiBpbnZhbGlkIHBvaW50ZXIsIGJ1dCB0aGF0IGRvZXMg
bm90DQogIGhhcHBlbiAtIGFuZCBpZiBpdCBjb3VsZCwgZ3JhY2VmdWxseSBoYW5kbGluZyB0aGF0
IHNpdHVhdGlvbiB3b3VsZCBiZQ0KICBtb3JlIGFwcHJvcHJpYXRlLg0KDQpOb3RlIHRoYXQgdGhl
IGFkamFjZW50IGRybV9jcnRjX2ZlbmNlX2dldF90aW1lbGluZV9uYW1lKCkgaGFzIHRoZSBzYW1l
DQpwcm9ibGVtIGFuZCBpcyBmaXhlZCBieSB0aGlzIHBhdGNoIGFzIHdlbGwuDQoNCkZpeGVzOiA1
NDFjOGYyNDY4YjkgKCJkbWEtYnVmOiBkZXRhY2ggZmVuY2Ugb3BzIG9uIHNpZ25hbCB2MyIpDQpT
aWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPg0K
DQotLS0NCnYyOg0KLSBkb24ndCB0dXJuIGZlbmNlX3RvX2NydGMoKSBpbnRvIG1hY3JvDQotIHVw
ZGF0ZSBjb21taXQgbWVzc2FnZSB0byBpbmNsdWRlIHJlZmVyZW5jZSB0byB1bmFjY2VwdGFibGUg
dXNlIG9mIEJVRw0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2RybV9jcnRjLmMgfCAzIC0tLQ0KIDEg
ZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2RybV9jcnRjLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2NydGMuYw0KaW5kZXggZDU1ZjEz
NzdlYzM2Li4zNmFlNTBkZGY1MjUgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Ny
dGMuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jcnRjLmMNCkBAIC0xNTQsMTEgKzE1NCw4
IEBAIHN0YXRpYyB2b2lkIGRybV9jcnRjX2NyY19maW5pKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykN
CiAjZW5kaWYNCiB9DQogDQotc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGRybV9j
cnRjX2ZlbmNlX29wczsNCi0NCiBzdGF0aWMgc3RydWN0IGRybV9jcnRjICpmZW5jZV90b19jcnRj
KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIHsNCi0JQlVHX09OKHJjdV9hY2Nlc3NfcG9pbnRl
cihmZW5jZS0+b3BzKSAhPSAmZHJtX2NydGNfZmVuY2Vfb3BzKTsNCiAJcmV0dXJuIGNvbnRhaW5l
cl9vZihmZW5jZS0+ZXh0ZXJuX2xvY2ssIHN0cnVjdCBkcm1fY3J0YywgZmVuY2VfbG9jayk7DQog
fQ0KIA0KDQotLSANCjIuNTUuMC43OTUuZzYwMmY2YzMyOWEtZ29vZw0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
