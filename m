Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCXqF6nQDWr53QUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 17:18:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1A4590AAA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 17:18:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D66824097C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 15:17:59 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	by lists.linaro.org (Postfix) with ESMTPS id A7CE040976
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 15:17:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=AeR+ecZj;
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.208.177 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-393c40246afso59772541fa.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 08:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779290267; x=1779895067; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ircF4PWSycvWSmAyVL8auld82Bsa3FQOWa7WNmN+a+A=;
        b=AeR+ecZj+a8yoe29XHSz+JxnVfrDTiMS2wu0eH1nODqQIfX168SZu8vS4m2lXrs+Ah
         NKUOWc1+SJAxL78L6TY+btgJqEfODP534h53lbjRjKxXEWGdcTZsEHHzKBjtmY8NpiAT
         sfpbvcwnX+pv0DqHbUOAyvqcIKYsjFZzkLsqlvOJXhXOTdbO4DpljGnjZzeW56lLWls4
         US4JE6uiD/fe8LOWZZ664gZyuyFvTmX7MF8+A6Z7wchc2J+Eyy/7ie0Ww8gXL2RZ6EBb
         BXRtDTtHtzqHjwomHWyhgx6KsLgffTgJr/juvyTvRXdX7teK/azQA+EtMJ/2hGjGG6tV
         HonQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779290267; x=1779895067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ircF4PWSycvWSmAyVL8auld82Bsa3FQOWa7WNmN+a+A=;
        b=etHA29X522l4Djqi07CZ7THR1iq9la6Neuf+O8aIrgyPg3eMOsF1Qn8LZnz266m2Sg
         Xf0EfvhIWDJTQiYfVIGuQkprKhU8V+6x306yyoCyra6vQVkvygtGFkQ5OptWZYa3jVQn
         +g7GCnkOfdk0fhd1mJ8CcFA3IiOz0e/er3h5twKGJEeeEfGv+lxJPadrMqhUd9KfrIlO
         EM1fudY6hWMNrzJhdNIQTED/Vys0PnKcQCx+qZRO4VcDxWNWOYjhQ3wPTxbDPRtvO38l
         +0er89XL06E/xghvky3tfBOeW0aAYJrClliA3JwC3SISC/TEtQtHCaRgwvzJaqJityP3
         U5Rg==
X-Forwarded-Encrypted: i=1; AFNElJ+dXXCIyBd3VtN7akprUgnLhEvbnRJo1HXPJT2WhxA9bmuDj1jePnInmE39hd4gkU0DOKmWpSwL5m9D9UA1@lists.linaro.org
X-Gm-Message-State: AOJu0YxrL2ZOcbIdyhEIgiaX2hHsk5Ms5AnmGvGHo9fmN82ce8WtPxb7
	eokN0ii8vESy9+3Iza2OaiNCs4/UlFn6uKtVkC48zu15UVxs06TYCiyl
X-Gm-Gg: Acq92OFl558XOgMbi4TAna3Nurqg273uI/O3tmfhjsgyT2mOd8aCwsW+WkfkYQ4QbMT
	FbwoKJKSRzWJ+rMTsgP9XxAz/ECpRZ0E5PpDTPn6Uz1Mbz/Apr3qTe18GEt3JKR80V7WKCGg3WJ
	xBFkcK+8eWafXbI/+EZD1cKltBG8pmlRhoA32oUCjcbjs8KXM/I/j7HAyy98bcCnc48fGmXQek+
	HYs1FW20kK3iKWVMX5RCYaQ/FM7vTXm2o8fAHVZMvimRoqOlFIymdmZkT+uLq9vHCPovXp1uQpk
	hYcpK07VTOFl+cXBfCnNm73iOjlrJ3dy3dyBx61NeVW7YPEcBZU8WNZWs4DstKp8iA7qFFG3bdg
	VqjEcPzu7CeEw514RVDe+3HVmL2Y/CPK0RTB9PddkzXepwltvmtfKlcPfJ+HdmZ4rt+2Tuo7pSp
	rx9UQKWMLAw4TQtlNmfVMRPPbIlhHDw2ii
X-Received: by 2002:a05:6512:1252:b0:5a4:1672:59d0 with SMTP id 2adb3069b0e04-5aa0e7278f0mr9211402e87.19.1779290267082;
        Wed, 20 May 2026 08:17:47 -0700 (PDT)
Received: from localhost ([188.234.148.119])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a90f10c8b2sm5022470e87.17.2026.05.20.08.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 08:17:46 -0700 (PDT)
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
To: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Date: Wed, 20 May 2026 20:17:38 +0500
Message-ID: <20260520151741.50575-1-mikhail.v.gavrilov@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260429143743.50743-1-mikhail.v.gavrilov@gmail.com>
References: <20260429143743.50743-1-mikhail.v.gavrilov@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: MIVB2OK2QRXEHZZNXIXWIUB3JW4QH5UN
X-Message-ID-Hash: MIVB2OK2QRXEHZZNXIXWIUB3JW4QH5UN
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 0/2] drm/amdgpu: fix recursive ww_mutex in devcoredump IB dump
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MIVB2OK2QRXEHZZNXIXWIUB3JW4QH5UN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[mikhailvgavrilov@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: EB1A4590AAA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhpcyBzZXJpZXMgZml4ZXMgYSBsb2NrZGVwICJwb3NzaWJsZSByZWN1cnNpdmUgbG9ja2luZyIg
c3BsYXQgaW4NCmFtZGdwdV9kZXZjb3JlZHVtcF9mb3JtYXQoKSB0aGF0IGZpcmVzIG9uIGV2ZXJ5
IEdQVSB0aW1lb3V0IG9uY2UgYSBqb2INCndpdGggYSBQQVNJRCBjb250ZXh0IGlzIGludm9sdmVk
LiBXaXRoIGFtZGdwdS5ncHVfcmVjb3Zlcnk9MCB0aGUgdGltZW91dA0KaGFuZGxlciByZWZpcmVz
IGV2ZXJ5IH4yIHMsIHNvIHRoZSBzcGxhdCByZXBlYXRzIHVudGlsIGl0IGRyb3ducyB0aGUNCmtl
cm5lbCByaW5nIGJ1ZmZlci4gSXQgaXMgYWxzbyBhIHJlYWwgc2VsZi1kZWFkbG9jayBmb3IgSUIg
Qk9zIHRoYXQNCnNoYXJlIHRoZWlyIGRtYV9yZXN2IHdpdGggdGhlIHJvb3QgUEQgKHRoZSBhbHdh
eXMtdmFsaWQgY2FzZSkuDQogDQpUaGUgcm9vdCBjYXVzZTogYW1kZ3B1X2RldmNvcmVkdW1wX2Zv
cm1hdCgpIGhvbGRzIHRoZSBWTSByb290IFBEJ3MNCnJlc2VydmF0aW9uIGFuZCB0aGVuIHJlc2Vy
dmVzIGVhY2ggSUIgQk8gb24gdG9wIG9mIGl0LCBuZXN0aW5nIHR3bw0KcmVzZXJ2YXRpb25fd3df
Y2xhc3NfbXV0ZXggYWNxdWlyZXMgd2l0aG91dCBhIHd3X2FjcXVpcmVfY3R4Lg0KIA0KdjEgZml4
ZWQgdGhpcyB3aXRoIGEgc25hcHNob3QgaGVscGVyIHRoYXQgY29sbGVjdGVkIEJPIHJlZmVyZW5j
ZXMgdW5kZXINCnRoZSByb290IHJlc2VydmF0aW9uIGFuZCByZXNlcnZlZCB0aGVtIG9uZSBieSBv
bmUgYWZ0ZXJ3YXJkcy4gQ2hyaXN0aWFuDQpwb2ludGVkIG91dCB0aGF0IGRybV9leGVjIGFscmVh
ZHkgc29sdmVzIGV4YWN0bHkgdGhpcyDigJQgbG9jayBldmVyeXRoaW5nDQppbiBvbmUgd3cgdGlj
a2V0IOKAlCBhbmQgc3VnZ2VzdGVkIHRlYWNoaW5nIGFtZGdwdV92bV9sb2NrX2J5X3Bhc2lkKCkN
CnRvIHRha2UgYSBkcm1fZXhlYyBjb250ZXh0LiBUaGlzIHYzIGZvbGxvd3MgdGhhdCBhcHByb2Fj
aC4NCiANCkJlY2F1c2UgYW1kZ3B1X3ZtX2xvY2tfYnlfcGFzaWQoKSBoYXMgYSBzZWNvbmQgY2Fs
bGVyIGluIHRoZSBwYWdlLWZhdWx0DQpwYXRoLCB0aGUgc2VyaWVzIGlzIHNwbGl0IHNvIGVhY2gg
cGF0Y2ggYnVpbGRzIGFuZCB3b3JrcyBvbiBpdHMgb3duOg0KIA0KICAxLzIgIENvbnZlcnQgYW1k
Z3B1X3ZtX2xvY2tfYnlfcGFzaWQoKSB0byB0YWtlIGEgZHJtX2V4ZWMgY29udGV4dCBhbmQNCiAg
ICAgICBsb2NrIHRoZSByb290IFBEIHZpYSBhbWRncHVfdm1fbG9ja19wZCgpLiBVcGRhdGVzIHRo
ZSBleGlzdGluZw0KICAgICAgIGNhbGxlciwgYW1kZ3B1X3ZtX2hhbmRsZV9mYXVsdCgpLiBQdXJl
IHJlZmFjdG9yLCBubyBmdW5jdGlvbmFsDQogICAgICAgY2hhbmdlIHRvIHRoZSBwYWdlLWZhdWx0
IHBhdGguDQogDQogIDIvMiAgVXNlIHRoZSBuZXcgc2lnbmF0dXJlIGluIGFtZGdwdV9kZXZjb3Jl
ZHVtcF9mb3JtYXQoKTogbG9jayB0aGUNCiAgICAgICByb290IFBEIGFuZCBldmVyeSBJQiBCTyB0
b2dldGhlciBpbiBvbmUgZHJtX2V4ZWMgdGlja2V0LiBUaGUNCiAgICAgICBwZXItSUIgYW1kZ3B1
X2JvX3Jlc2VydmUoKSBuZXN0aW5nIGlzIGdvbmUsIGFsb25nIHdpdGggYSBCTw0KICAgICAgIHJl
ZmNvdW50IGxlYWsgb24gdGhlIG9sZCByZXNlcnZlLWZhaWx1cmUgcGF0aC4gVGhpcyBpcyB0aGUN
CiAgICAgICBhY3R1YWwgYnVnIGZpeCBhbmQgY2FycmllcyB0aGUgRml4ZXM6IHRhZy4NCiANClRl
c3RlZCBvbiBMaW51eCA3LjEtcmM0ICsgdGhpcyBzZXJpZXMsIFJhZGVvbiBSWCA3OTAwIFhUWCAo
Z2Z4MTEwMCksDQpLQVNBTiArIFBST1ZFX0xPQ0tJTkcgZW5hYmxlZCwgdXNpbmcgYSBzbWFsbCBs
aWJkcm1fYW1kZ3B1IHJlcHJvZHVjZXINCnRoYXQgc3VibWl0cyBhIEdGWCBJQiBjaGFpbmVkIGF0
IEdQVSBWQSAwIGFuZCB3YWl0cyBmb3IgdGhlIGhhbmcuIEJlZm9yZQ0KdGhlIHNlcmllcyB0aGUg
c3BsYXQgZmlyZXMgb24gZXZlcnkgVERSOyBhZnRlciBpdCB0aGUgZG1lc2cgaXMgY2xlYW4NCmFj
cm9zcyByZXBlYXRlZCB0aW1lb3V0cyBhbmQgdGhlIGRldmNvcmVkdW1wIG91dHB1dCBpcyB1bmNo
YW5nZWQuDQogDQp2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYW1kLWdmeC8yMDI2MDQyOTE0
Mzc0My41MDc0My0xLW1pa2hhaWwudi5nYXZyaWxvdkBnbWFpbC5jb20vDQp2MjogaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYW1kLWdmeC8yMDI2MDUxOTE2MTU0MS4xOTk5NC0xLW1pa2hhaWwudi5n
YXZyaWxvdkBnbWFpbC5jb20vDQogDQpDaGFuZ2VzIHNpbmNlIHYyOg0KLSBSZXdvcmtlZCBhbG9u
ZyB0aGUgbGluZXMgQ2hyaXN0aWFuIHN1Z2dlc3RlZDogaW5zdGVhZCBvZiBhIHByaXZhdGUNCiAg
c25hcHNob3QgaGVscGVyIGFuZCBhIHNlcGFyYXRlIGRybV9leGVjIHBhc3MsIGFtZGdwdV92bV9s
b2NrX2J5X3Bhc2lkKCkNCiAgbm93IHRha2VzIGEgZHJtX2V4ZWMgY29udGV4dCBkaXJlY3RseSAo
cGF0Y2ggMSksIGFuZCB0aGUgZGV2Y29yZWR1bXANCiAgY29kZSBsb2NrcyB0aGUgcm9vdCBQRCBh
bmQgYWxsIElCIEJPcyBpbiBhIHNpbmdsZSB0aWNrZXQgKHBhdGNoIDIpLg0KLSBEcm9wcGVkIHRo
ZSBhbWRncHVfZGV2Y29yZWR1bXBfaWJfcmVmIHN0cnVjdCBhbmQgdGhlIHRocmVlDQogIGNvbGxl
Y3QvbG9jay9yZWxlYXNlIGhlbHBlcnMgZnJvbSB2MiBlbnRpcmVseS4NCiANCkNoYW5nZXMgc2lu
Y2UgdjE6DQotIFN3aXRjaGVkIGZyb20gcGVyLUlCIGFtZGdwdV9ib19yZXNlcnZlKCkgdG8gZHJt
X2V4ZWMuDQotIERyb3BwZWQgdGhlIENjOiBzdGFibGUgdGFnOiB0aGUgcmVncmVzc2lvbiBvbmx5
IGxhbmRlZCBpbiA3LjEtcmMxLCBzbw0KICB0aGUgZml4IHJlYWNoZXMgNy4xIHZpYSBkcm0tZml4
ZXMgd2l0aG91dCBhIHN0YWJsZSBiYWNrcG9ydC4NCg0KTWlraGFpbCBHYXZyaWxvdiAoMik6DQog
IGRybS9hbWRncHU6IGNvbnZlcnQgYW1kZ3B1X3ZtX2xvY2tfYnlfcGFzaWQoKSB0byBkcm1fZXhl
Yw0KICBkcm0vYW1kZ3B1OiBmaXggcmVjdXJzaXZlIHd3X211dGV4IGFjcXVpcmUgaW4NCiAgICBh
bWRncHVfZGV2Y29yZWR1bXBfZm9ybWF0DQoNCiAuLi4vZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9kZXZfY29yZWR1bXAuYyAgfCAxMDMgKysrKysrKysrKysrLS0tLS0tDQogZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtLmMgICAgICAgIHwgIDcyICsrKysrKysrLS0tLQ0KIGRy
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bS5oICAgICAgICB8ICAgMyArLQ0KIDMg
ZmlsZXMgY2hhbmdlZCwgMTIyIGluc2VydGlvbnMoKyksIDU2IGRlbGV0aW9ucygtKQ0KDQotLSAN
CjIuNTQuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
