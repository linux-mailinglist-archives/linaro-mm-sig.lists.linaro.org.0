Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Ei+Bx1XGGoQjQgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2026 16:54:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A1E5F3FCB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2026 16:54:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A0B17404E0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2026 14:54:19 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by lists.linaro.org (Postfix) with ESMTPS id 2EEE43F817
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2026 14:54:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=WUE9OL5I;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.208.44 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-68719234fd8so6958779a12.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2026 07:54:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779980048; cv=none;
        d=google.com; s=arc-20240605;
        b=ER6o2Ufh33b7BbAa+xEltaYfo0iZ11xn3eGRpGdiEQJoD0ZIxj0gkmiX+/EZyFy7hV
         5iHikTB8jispkO7oZcgjvluYAhtK0HNEQsnWC+0FlBAF3/9k5O8Sy0jdIUlxkyCiS2S1
         qFjUk4yrGbVKm5Xk/jPUPVtQa4w+G78chQLs4VvXdYbmE48XoDWbe63VeGfrmjFFlWku
         zSD7QNuG0NX+npm2J9Iv+Lp7BXsZdOLHDzZoZqy73rchiRorwa2qZ3iN7aN0iBgLchPR
         B/VRxtD2nQIsLwf95gUJbY8vcQIaCliaHjJwZy8quCKzzAoCe1BS2NZhGZYM+ZrzZrM6
         5w3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=9OXz/l5MhiOrtGyFdSgSY2UmTjKKZnnagh0u7LsCdfw=;
        fh=r+l1i/34yT2kChkXdb04DCVq2N974xvbWZTQ6o9RpCY=;
        b=SFLaQvsu8r5G+OgIg6O3AJAW0EIeq7PffawFo0fHz9tR6RKoJXU/l8m8IMBIc51JB6
         gY14WPXVG6L0BhVpw6YUBZ4qfF83YYirFEGclRwowHhDWVWNmClE3lbEa/ijLte9Dpmx
         Rt33nMi+ZgkpSXXk+zb9Aby3yCcQVsgtr330vvTluzZ6Ja7frzPPlb7xvZDRf4ljHQjd
         fVkpZ8lceW/nTMmMgCfzcNCk1vKttRNlP5plSIq6q3n3omJf8IgWWCmIxMBhzt4fg9yX
         UbcUpDrTCiAWio5idCg7nX/7Yrn+uzJUQK1ka29tarlsbQmnRtcKVtk2PYSGuBuEH2WT
         FslQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779980048; x=1780584848; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9OXz/l5MhiOrtGyFdSgSY2UmTjKKZnnagh0u7LsCdfw=;
        b=WUE9OL5IRcoLZVp7zBIHERdbKWkDxodA97bIxWx6d9GBSYipDSDx2KnlR3MOKa/1on
         e3ZKw84oRYDmuF04XkGM58JzNUGXZuPQ9qAYlvb3r+mkqLM7vaWCuVMcGVTUaiTKjodV
         sh/0nGFuuNeJ87arnoYt9mTRSk6frjI12gY9/DM5JzCG3dyji5ccy0+3k9L1jUfjxW/b
         xaQ7RRKzCBhhlEMJn5Khg4wzNyKSUVg45NcX5md+No4M+tMPBtbtvOgIaeFm5xTI44I9
         nRu9Hu5sVhl2VbgYa61qNKoO43n1rYvcXg70rBs2pc+zMtFpUttmx4odof2JMAc7Q7Ap
         1gmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779980048; x=1780584848;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9OXz/l5MhiOrtGyFdSgSY2UmTjKKZnnagh0u7LsCdfw=;
        b=llTeLRPD0VGstBwbRYjt8Narl6KO/2rHsTWu6t/l+OP19CaLUIPm9T9olWPTWz4Yvs
         xR0BZOswYcL1nCRd3jiyRE+yjB/Y8MQ4u8dmKWnt4e3dLisggwCWZgvovCf441CNlS47
         fEhlURQuVzpRtWI3w5Xsw5IqOIBsHE6yhKluoH/DCvRq2k7KADRv0x3beaXqqWTuTBsE
         7rsAWrjWM2cuVgTaE151JSCt/SyXnydi1LROgCVnlmzwcxtjftR8X8CDzkZxg03IPMKp
         57AEmOqzgGrPTaIS17+2cgE8bRhtK5QcxS1JRQMfP0LR695KXM8xautqEnpFidnE+TUh
         XdWg==
X-Forwarded-Encrypted: i=1; AFNElJ9WhW8fXH3sMx1L7bNcerqzhCMzaydP9o1Y5n7xhJVNjrJnYFYLa0hVCVke6tPOBC5dYQFAol0BPCdATy7f@lists.linaro.org
X-Gm-Message-State: AOJu0YwKGmDt5VcM5447sIs5kHjYPDUirDy9Su66qjwd8qWlrlu1wq9v
	irO9Ux9JOq3jb+hfU/W9IwSXBnnK5RVKj3+/dMx8kkbV28HlctG6hItZYBBO/ckFJe5WJfnnohL
	wG04EjG/iwP01I/hO3ouibuny2AuumAddv6NS8aSp8+7L
X-Gm-Gg: Acq92OHJUwBUDNsw7YNJy++HC/B14kmkEyQc717sSAPft0fZSkf77/U+10MvXx1B+U+
	xHE8hhglgWM4LmINRjYVwYyBb+yJkL6s31T/wdS8Bdl0WioXjTYz1+/FwxmEyzmh6XRHPA3FWLx
	T2V5lDvdMJjuggymQX1PwnXGEePpViYPrcTp9syRsotgp6p/92+Zw5nsXhUPGYRGR9sqdSE8NEn
	PviMytqO0hx83/odcZDZWlRuQpFbbWUqGAOt5hEgMyCOJhLh8qgvrU6yPjJd+LyPrnIAnH2XBLN
	nVoWSbl1vAIXbyAQRu/XQFtCJPmC318/5qCFSVjA5FMClSyL
X-Received: by 2002:a17:907:75d9:b0:bbe:37ee:8a2b with SMTP id
 a640c23a62f3a-bdd279ce23fmr1206290366b.33.1779980047494; Thu, 28 May 2026
 07:54:07 -0700 (PDT)
MIME-Version: 1.0
References: <20260523181446.69525-1-devnexen@gmail.com> <ae16f5c2-c6d9-4274-9a27-f87bfe931b1f@amd.com>
In-Reply-To: <ae16f5c2-c6d9-4274-9a27-f87bfe931b1f@amd.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 28 May 2026 20:23:52 +0530
X-Gm-Features: AVHnY4LutoQ-7Ka86XumSZSoxXa9nFy3SHyGiarPBSsSmWM-nR_geKS3HNuAjkA
Message-ID: <CAO_48GFOZESPnm5iLa0D+4itq7hjc9EyRUjMY4QwN5EsLn97SQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: -----
Message-ID-Hash: ENZZ37XWPCFFYQCPOWSFJUQDH4SSQLS7
X-Message-ID-Hash: ENZZ37XWPCFFYQCPOWSFJUQDH4SSQLS7
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Carlier <devnexen@gmail.com>, gaoxiang17@xiaomi.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, syzbot+7f4987d0afb97dd090cb@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix UAF in dma_buf_fd() tracepoint
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ENZZ37XWPCFFYQCPOWSFJUQDH4SSQLS7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,xiaomi.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,syzkaller.appspotmail.com];
	DKIM_TRACE(0.00)[linaro.org:-];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.177];
	FROM_NEQ_ENVFROM(0.00)[sumit.semwal@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	TAGGED_RCPT(0.00)[linaro-mm-sig,7f4987d0afb97dd090cb];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,syzkaller.appspot.com:url,mail.gmail.com:mid,appspotmail.com:email,amd.com:email]
X-Rspamd-Queue-Id: A2A1E5F3FCB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgRGF2aWQsDQoNCk9uIFR1ZSwgMjYgTWF5IDIwMjYgYXQgMDA6MjUsIENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+DQo+IE9uIDUvMjMvMjYgMjA6
MTQsIERhdmlkIENhcmxpZXIgd3JvdGU6DQo+ID4gT25jZSBGRF9BREQoKSByZXR1cm5zLCB0aGUg
ZmQgaXMgbGl2ZSBpbiB0aGUgZmlsZSBkZXNjcmlwdG9yIHRhYmxlDQo+ID4gYW5kIGEgdGhyZWFk
IHNoYXJpbmcgdGhhdCB0YWJsZSBjYW4gY2xvc2UoKSBpdCBiZWZvcmUgRE1BX0JVRl9UUkFDRSgp
DQo+ID4gcnVucy4gVGhlIGNsb3NlIGRyb3BzIHRoZSBsYXN0IHJlZmVyZW5jZSwgX19mcHV0KCkg
ZnJlZXMgdGhlIGRtYV9idWYsDQo+ID4gYW5kIHRoZSB0cmFjZXBvaW50IHRoZW4gZGVyZWZlcmVu
Y2VzIGRtYWJ1ZiB0byB0YWtlIGRtYWJ1Zi0+bmFtZV9sb2NrDQo+ID4gLS0gc2xhYi11c2UtYWZ0
ZXItZnJlZS4NCj4gPg0KPiA+IFNwbGl0IEZEX0FERCgpIGJhY2sgaW50byBnZXRfdW51c2VkX2Zk
X2ZsYWdzKCkgKyBmZF9pbnN0YWxsKCkgYW5kDQo+ID4gZW1pdCB0aGUgdHJhY2Vwb2ludCBiZXR3
ZWVuIHRoZW0uIFdoaWxlIHRoZSBmZHRhYmxlIHNsb3QgaXMgcmVzZXJ2ZWQNCj4gPiB3aXRoIGEg
TlVMTCBmaWxlIHBvaW50ZXIsIGEgcmFjaW5nIGNsb3NlKCkgcmV0dXJucyAtRUJBREYgd2l0aG91
dA0KPiA+IGVudGVyaW5nIF9fZnB1dCgpLCBzbyB0aGUgZG1hX2J1ZiBzdGF5cyBhbGl2ZSBhY3Jv
c3MgdGhlIHRyYWNlLiBTYW1lDQo+ID4gYXBwcm9hY2ggYXMgY29tbWl0IDJkNzYzMTljNGNiYiAo
ImRtYS1idWY6IGZpeCBVQUYgaW4gZG1hX2J1Zl9wdXQoKQ0KPiA+IHRyYWNlcG9pbnQiKS4NCj4g
Pg0KPiA+IFRoaXMgdW5kb2VzIHRoZSBGRF9BREQoKSBjb252ZXJzaW9uIGRvbmUgaW4gY29tbWl0
IDM0ZGZjZTUyM2M5MA0KPiA+ICgiZG1hOiBjb252ZXJ0IGRtYV9idWZfZmQoKSB0byBGRF9BREQo
KSIpOyBGRF9BREQoKSBoYXMgbm8gcGxhY2UgdG8NCj4gPiBob29rIHRoZSB0cmFjZXBvaW50IHNh
ZmVseS4NCj4gPg0KPiA+IFJlcG9ydGVkLWJ5OiBzeXpib3QrN2Y0OTg3ZDBhZmI5N2RkMDkwY2JA
c3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQ0KPiA+IENsb3NlczogaHR0cHM6Ly9zeXprYWxsZXIu
YXBwc3BvdC5jb20vYnVnP2V4dGlkPTdmNDk4N2QwYWZiOTdkZDA5MGNiDQo+ID4gRml4ZXM6IDI4
MWEyMjYzMTQyMyAoImRtYS1idWY6IGFkZCBzb21lIHRyYWNlcG9pbnRzIHRvIGRlYnVnLiIpDQo+
ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyA3LjAueA0KPiA+IFNpZ25lZC1vZmYtYnk6
IERhdmlkIENhcmxpZXIgPGRldm5leGVuQGdtYWlsLmNvbT4NCj4NCj4gUmV2aWV3ZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KVGhhbmtzIHZlcnkg
bXVjaCBmb3IgdGhlIHBhdGNoOyBhcHBsaWVkIHRvIGRybS1taXNjLWZpeGVzLg0KPg0KPiA+IC0t
LQ0KPiA+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgNiArKysrKy0NCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+DQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jDQo+ID4gaW5kZXggNzFmMzc1NDRhNWM2Li5kNTA0YzYzNmRjMjkgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMNCj4gPiBAQCAtNzkyLDkgKzc5MiwxMyBAQCBpbnQgZG1hX2J1Zl9mZChzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hYnVmLCBpbnQgZmxhZ3MpDQo+ID4gICAgICAgICBpZiAoIWRtYWJ1ZiB8fCAh
ZG1hYnVmLT5maWxlKQ0KPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gPg0K
PiA+IC0gICAgICAgZmQgPSBGRF9BREQoZmxhZ3MsIGRtYWJ1Zi0+ZmlsZSk7DQo+ID4gKyAgICAg
ICBmZCA9IGdldF91bnVzZWRfZmRfZmxhZ3MoZmxhZ3MpOw0KPiA+ICsgICAgICAgaWYgKGZkIDwg
MCkNCj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIGZkOw0KPiA+ICsNCj4gPiAgICAgICAgIERN
QV9CVUZfVFJBQ0UodHJhY2VfZG1hX2J1Zl9mZCwgZG1hYnVmLCBmZCk7DQo+ID4NCj4gPiArICAg
ICAgIGZkX2luc3RhbGwoZmQsIGRtYWJ1Zi0+ZmlsZSk7DQo+ID4gICAgICAgICByZXR1cm4gZmQ7
DQo+ID4gIH0NCj4gPiAgRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9mZCwgIkRNQV9CVUYi
KTsNCj4gPiAtLQ0KPiA+IDIuNTMuMA0KPiA+DQo+DQoNCkJlc3QsDQpTdW1pdC4NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
