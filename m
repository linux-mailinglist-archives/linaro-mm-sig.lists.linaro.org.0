Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xuk/LNtgPWrd2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:09:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCC86C7B6D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:09:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=iJPvtrXm;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 55A5444868
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:09:46 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by lists.linaro.org (Postfix) with ESMTPS id 58ACA3F6A0
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 21:54:41 +0000 (UTC)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-7fe723ca5e5so16858507b3.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 14:54:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782338081; cv=none;
        d=google.com; s=arc-20260327;
        b=QzkxNlwHdiRf0WC9Z1T8TXvnWzOWaqhN9Lm2lDwms5uzKk8VjC3r1QjOYDzXXVSXlr
         hPCTLgXPe8Knrf6oZnN2WX+R79KalJ3AuADgcOeSBi/2vx9vjqJI+GmYjcEJ1T+m6+Cn
         uZxsqhAjmVtfxTGanluF11Q+6VwL3zcWu/rc1B16SfPab7VrFx8Yhbrwr/TmCKSiwUwN
         2SfGoSbseCyrstLw5vxKdSiT9LJmCcZ0NiI9RwLQYPUiWY7t8teabvFecMpI9pdAYdz0
         SWnAi4qI8SSI/GnPsdQDq0Fh9ENXEC+VhlP1mmvn+RScBRNCVOpJSBoZJLUUEamK0FwU
         5jfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=Bh8+6SvsunFH7emI3915MXGw0/i4y8PizMc/TEhnjUg=;
        fh=5i5QLsMsJbVDRLRMphVVZxazNZwPN6aLv+eVAO+8C5E=;
        b=nCcAcLXszGtATjrstn/vE3jrmxwo5Eg8fOn6NRewVVyadkPQfM4tJGFT/eUF+NHlvF
         7ohhUpAEU9o+0Rn+lEKEUkHJXj3YKhUTdHdamoJQ4irpL7SclnAzFLmjUsdU3Ptd1MW1
         q4KtT0hsS/CKuMz7NrGvaxnyldy0QiQOoVRLQWFct/BH9Tdsty1TIH6eB2T6F+fgjR0+
         H7Yi0h/S1dm8EYi/jU10T+XRSHzvRKkehdyZWsf3URLMAdWfbJj8G5WFpq4oh6GvLYt6
         SxvseJmLgXl5IZM0RlU2UWl87PzplXu3LDSTqz/JQYCPqzdeOWMk9quNsRNkaQ9FCNgM
         6PNg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782338081; x=1782942881; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Bh8+6SvsunFH7emI3915MXGw0/i4y8PizMc/TEhnjUg=;
        b=iJPvtrXmCodxVkPIkA/VAOdfRKA4ndlJAtZa8fUK6gdH0TWbE5pJeX7jC5MYqEBZyO
         rsG5lZb0yAr+GaQiV2eUlOYKB2yFRs020ANL1R0wUEvPtF+ejqHOOAxg2aYKlo9B1G78
         c9WCfQSLDPO9hLyASjubfmdZpc9bW222llR3HzMvGaaO9mQUBesXWSoXfnxkaBjWOlk8
         UE5oGv/z9lLFreTcyzZfRF3vChq8YwTSL+oD7sQvfpIOFlCwCijORuP2W8XUtgFBlf+E
         s47sbvzLo+PXXiViDdx1X2BMSCIgVCGwKStdRedcXn/FCQ4dqJRJlkppjwUZ6W9wa0ru
         rNBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782338081; x=1782942881;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bh8+6SvsunFH7emI3915MXGw0/i4y8PizMc/TEhnjUg=;
        b=b1RoI4fGTseWX9cLnm4FgU1lbMu3/36xeukXi8+MpUt+Ew1+Q2rbvtB6kv+dmYmHCn
         jEWEBOpjG3cLxr/SlctPyrxaMM9jEC+ZlnEcxzNXxEPe5ybB+fjOohTKN7kSIsF58t8S
         pr2HtUm942vG11oYtIYFlknIvZgqx0XLm0HCPDAwqxbRyaH3UP/2Qcl1ObY1fev6dl7v
         o/EwqA309IM7loUBKsHVUuvGwEO/MZo9e7Bk3bOEpuOl/QSGHwi6Dp6J+XsWzhOHsZpd
         TscVVt2ZGe6ykPEqZA1pad3YI/yvAhdqGMAt/UdnG8A9/BstDvdaWYZ+9cwhC/0ebMqx
         cvSA==
X-Forwarded-Encrypted: i=1; AHgh+RrRUB5WFeNBAOdt/j7/vTieMBqFbPD8SRbRStYEn2I/uVfhaf2IOWsZdGO71pXD7yoXk+4NbrvUHbKkp/pr@lists.linaro.org
X-Gm-Message-State: AOJu0YxPOjk4P1SyaUuY71FHdu76J0xhcXeLjgBrvzydEnonqEfXNJnd
	c3HZuX9McRgNPejyxtpZMIVNcGXl/bOYSZyuZCU9w3D5JAAYJTlexrVFBMtuCN/OdbMZzlNrnQg
	5bDWSu9GO9ckxMHp5vRP4Gv07XO78S2g=
X-Gm-Gg: AfdE7ckfRpTR5jCu0RHnL/cFAT1yMZWGx0c7qQl/Rnp3peJO2K8iB1WOY/SyPYfVGoW
	MV7VEBBaL2QkgupqaqjxRCCZvB3anD9WZt9Of/1npxZV5lmBM0NoU8eOuJXH6Ce3XAm/4xOL2KO
	93Lb2JmPtFknokLiprSKjCm0MubWoX4PoiNBQ68tz5U/A4QbmpqOBb8CAXr6BhLK/BE0G2Jr+50
	/0NwUJT0FqHPlgFmGcGVx+Va+rO+3hDCwmw/X4WBTNE1q73mwg2upw5hYHJ+E2hsE0yIIvT
X-Received: by 2002:a05:690c:7248:b0:7bd:8ce4:92b with SMTP id
 00721157ae682-80a6a296427mr41307b3.17.1782338073547; Wed, 24 Jun 2026
 14:54:33 -0700 (PDT)
Received: from 77377267392 named unknown by gmailapi.google.com with HTTPREST;
 Wed, 24 Jun 2026 14:54:33 -0700
Received: from 77377267392 named unknown by gmailapi.google.com with HTTPREST;
 Wed, 24 Jun 2026 14:54:33 -0700
MIME-Version: 1.0
From: Yousef Alhouseen <alhouseenyousef@gmail.com>
Date: Wed, 24 Jun 2026 14:54:33 -0700
X-Gm-Features: AVVi8Ce_wcOOGQACiJ7fmfSkprpRmGytkZE_GUVedaUXOaW1g6FuUzDMUNPcyPM
Message-ID: <CAMuQ4bUb-nH9F3S+-qCAeC1z2NVi2MuzNirJdTNbq66BtCDfQg@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>,
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ----
X-MailFrom: alhouseenyousef@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NUUK2SCCAHADDJCIJY73LH6EIMXU5L72
X-Message-ID-Hash: NUUK2SCCAHADDJCIJY73LH6EIMXU5L72
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:27 +0000
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Yousef Alhouseen <alhouseenyousef@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf: udmabuf: avoid list copy size overflow
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NUUK2SCCAHADDJCIJY73LH6EIMXU5L72/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alhouseenyousef@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:alhouseenyousef@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.linaro.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alhouseenyousef@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3DCC86C7B6D

VURNQUJVRl9DUkVBVEVfTElTVCBjb3BpZXMgYW4gYXJyYXkgd2hvc2UgZWxlbWVudCBjb3VudCBj
b21lcyBmcm9tDQp1c2Vyc3BhY2UuIFRoZSBjb3VudCBpcyBib3VuZGVkIGJ5IHRoZSBsaXN0X2xp
bWl0IG1vZHVsZSBwYXJhbWV0ZXIsIGJ1dA0KdGhhdCBwYXJhbWV0ZXIgZG9lcyBub3QgbmVlZCBu
ZWdhdGl2ZSB2YWx1ZXMuDQoNCk1ha2UgbGlzdF9saW1pdCB1bnNpZ25lZCBzbyBpdHMgdHlwZSBt
YXRjaGVzIHRoZSB1MzIgY291bnQgZmllbGQuIEFsc28NCnVzZSBtZW1kdXBfYXJyYXlfdXNlcigp
IGZvciB0aGUgbGlzdCBjb3B5IHNvIHRoZSBlbGVtZW50LWNvdW50DQptdWx0aXBsaWNhdGlvbiBp
cyBjaGVja2VkIGJlZm9yZSBhbGxvY2F0aW9uIGFuZCBjb3B5aW5nLg0KDQpTdWdnZXN0ZWQtYnk6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClNpZ25lZC1vZmYt
Ynk6IFlvdXNlZiBBbGhvdXNlZW4gPGFsaG91c2VlbnlvdXNlZkBnbWFpbC5jb20+DQotLS0NCkNo
YW5nZXMgaW4gdjI6DQotIE1ha2UgbGlzdF9saW1pdCB1bnNpZ25lZCBhcyBzdWdnZXN0ZWQgYnkg
Q2hyaXN0aWFuLg0KLSBLZWVwIHRoZSBjaGVja2VkIGFycmF5IGNvcHkgYW5kIGRyb3AgdGhlIGxv
Y2FsIHUzMiBieXRlLWNvdW50IHRlbXBvcmFyeS4NCg0KIGRyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVm
LmMgfCA3ICsrKy0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyBiL2RyaXZl
cnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCmluZGV4IGJjZWQ0MjFjMC4uZTM0YTNiMTM1IDEwMDY0NA0K
LS0tIGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL3Vk
bWFidWYuYw0KQEAgLTIxLDggKzIxLDggQEANCiAjaW5jbHVkZSA8bGludXgvdWRtYWJ1Zi5oPg0K
ICNpbmNsdWRlIDxsaW51eC92bWFsbG9jLmg+DQoNCi1zdGF0aWMgaW50IGxpc3RfbGltaXQgPSAx
MDI0Ow0KLW1vZHVsZV9wYXJhbShsaXN0X2xpbWl0LCBpbnQsIDA2NDQpOw0KK3N0YXRpYyB1bnNp
Z25lZCBpbnQgbGlzdF9saW1pdCA9IDEwMjQ7DQorbW9kdWxlX3BhcmFtKGxpc3RfbGltaXQsIHVp
bnQsIDA2NDQpOw0KIE1PRFVMRV9QQVJNX0RFU0MobGlzdF9saW1pdCwgInVkbWFidWZfY3JlYXRl
X2xpc3QtPmNvdW50IGxpbWl0Lg0KRGVmYXVsdCBpcyAxMDI0LiIpOw0KIHN0YXRpYyBpbnQgc2l6
ZV9saW1pdF9tYiA9IDY0Ow0KIG1vZHVsZV9wYXJhbShzaXplX2xpbWl0X21iLCBpbnQsIDA2NDQp
Ow0KQEAgLTQ3MSwxMiArNDcxLDExIEBAIHN0YXRpYyBsb25nIHVkbWFidWZfaW9jdGxfY3JlYXRl
X2xpc3Qoc3RydWN0DQpmaWxlICpmaWxwLCB1bnNpZ25lZCBsb25nIGFyZykNCiAJc3RydWN0IHVk
bWFidWZfY3JlYXRlX2xpc3QgaGVhZDsNCiAJc3RydWN0IHVkbWFidWZfY3JlYXRlX2l0ZW0gKmxp
c3Q7DQogCWludCByZXQgPSAtRUlOVkFMOw0KLQl1MzIgbHNpemU7DQoNCiAJaWYgKGNvcHlfZnJv
bV91c2VyKCZoZWFkLCAodm9pZCBfX3VzZXIgKilhcmcsIHNpemVvZihoZWFkKSkpDQogCQlyZXR1
cm4gLUVGQVVMVDsNCiAJaWYgKGhlYWQuY291bnQgPiBsaXN0X2xpbWl0KQ0KIAkJcmV0dXJuIC1F
SU5WQUw7DQotCWxzaXplID0gc2l6ZW9mKHN0cnVjdCB1ZG1hYnVmX2NyZWF0ZV9pdGVtKSAqIGhl
YWQuY291bnQ7DQotCWxpc3QgPSBtZW1kdXBfdXNlcigodm9pZCBfX3VzZXIgKikoYXJnICsgc2l6
ZW9mKGhlYWQpKSwgbHNpemUpOw0KKwlsaXN0ID0gbWVtZHVwX2FycmF5X3VzZXIoKHZvaWQgX191
c2VyICopKGFyZyArIHNpemVvZihoZWFkKSksDQorCQkJCSAgICAgIGhlYWQuY291bnQsIHNpemVv
ZigqbGlzdCkpOw0KIAlpZiAoSVNfRVJSKGxpc3QpKQ0KIAkJcmV0dXJuIFBUUl9FUlIobGlzdCk7
DQoNCi0tIA0KMi41NC4wDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
