Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBa1Ct5i5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:31:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E00431518
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:31:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BBE99404E0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:31:08 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by lists.linaro.org (Postfix) with ESMTPS id 689043F9DC
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 14:25:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=LAmtYK16;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.210.49 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7d1872504cbso1995929a34.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 07:25:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774621546; cv=none;
        d=google.com; s=arc-20240605;
        b=WsR+0UqBY8HDh9mZJnxdN674Gkkzd2evJmQYZmNatGCc8NVPj7PpG4zbOxEY1lgeF+
         Z7oVejiPS77z+VHTzDSQht0rMoXyxz/d0hQjd2sg8Q5OIhmmqMxiDS2/sWPwaMBz2csd
         HpQEsElbo8P4ZtCSqiaABUbO2kH7Q3/tYzyZVxWlUq8SAbfcaNAfF8C6/QkR9I27ogdI
         +5FvhFhpTpU1UxzOVIub/M8FevC/YSB4BeQ91J1irh+JHJwmzwocIBe7lJTcw5GYORrd
         TNCHvNsHDJ9vhQKpjDcDJTJD7LUEea3+Xu92tPlOWtvGBKp0Nc3pOy5MBUdCpI5/eNlJ
         Svkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4CkbRyLOqwqwWGIOpFw2bUHzgPgIG2tUM7yOxEtSZu8=;
        fh=n4TFCc0uDRhQ7CRJ/n4H+0qiHYqLKP1vDzpsTwU9ej4=;
        b=QiGrR8OZeosKgs9KNABbayuDTNlcAMI060gGyfsVNL/1ANttsTeJe/z4yrQqBnocEr
         W91djvBnBHMpgx57Ujr+ieUrv/F7tnPBnjZmNtgL41+q1eBfINIbtMkeOvKy1mXic2uj
         hKuNK782n14lo62NCqLngooIAECyKrUtE6o1s2W9flgqGY5pl4bwZR2soZxq0T8NZgj0
         FWFYPSZmKSG1afQatTzj3xsVaX0ijBCbBapa4K6s8jSkoEmKlv8iAPxY6p836zDwHtXz
         KiITXNgz4d4u8cg6Sw2SptXaR3GaUIKWmtaLynJNMxEYbTcEIeUR7wDyyRVZmjlYJSvi
         GZlA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774621546; x=1775226346; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4CkbRyLOqwqwWGIOpFw2bUHzgPgIG2tUM7yOxEtSZu8=;
        b=LAmtYK16cb1iQo2XeCV7GdTt5kVycdJG0jwhNQ5bOEDxNr5h7+HVwNlyUgQrTcnF9s
         TQPQs4vBq1+F89wDxB2uyif1HNdMfa+ftzqaI10ubZ5sRIp/UF7gh3vE3dFTBt6Mnk96
         LF/mr+eAYi2fLz2UKVdiRHSICkfyi7dkB09hzNAg59hR/mEMycnHZ1prPMmXqT+n/Aba
         Fb47LFvIL8Juf6EkAA3h9YhsNx7Fa6acBwPSIStY/Xsm/5pU/JO/7yxpXZOIAfs6KpWS
         ZMB7jWJ9jF0X8S/SIGbQZ3HcwBImMr6NL/fWHNtTAKhYcQfzDn1Z0ZHLinmGXS5WOPk8
         xEaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774621546; x=1775226346;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4CkbRyLOqwqwWGIOpFw2bUHzgPgIG2tUM7yOxEtSZu8=;
        b=MGhKTgVvlpZ2pvBXStSmZ0F8ESMbWC7QBaM9S+CjiYKUw8TZrdEYy5EgMO7SSXtopA
         epfpoiZ/jpIhRKW31UMXJB0E593beAPTopox73C7+6MJgzNHXzKyRR3lJaRkDfGg0aZd
         fxaddGrpjnNlkAGcFL73mhGHzqFA7q1vO1BkKhIQH4ezPH6zSwO11nvCx4efwPsBTfZT
         yHspb6/d+knns/YZLYLUN4+XP0RyMrHCCq0YpkHvYri0Lio+eY8IohmrY/SOzy0HWxRU
         MdOyk0Z8z1y9AwLufLDO3hOE6yLn6dxfYNLXw9+3Rdbw1AV3oa1YmT3gPLlaJ9hBLMWQ
         QV3g==
X-Forwarded-Encrypted: i=1; AJvYcCXOhoJlvm8klMHA9OKw8n8keMdOSQlAD1HBVm0H6d3m+OAuTfwuHIHu2zKV+6VWoSsNC7RbYdQ7owg6icOO@lists.linaro.org
X-Gm-Message-State: AOJu0YwQkP1SR09nwdSd5DlMKO1mnd+igtpWy9BQr2A1pzzsDn2POzex
	2NCd9W7axsqEE1lBkYMyBhmiklOpDmfB0un61FuJIraJMfHEpjf/jJwoWjSGVWCS3Xyng2OVsLq
	uzsOqWF11+ECvuF//xOh0SLsr/O32xdVGztjdjzPusLQymgI=
X-Gm-Gg: ATEYQzyFFXYlk587DNAVXrfVhTfH9OyNUunZManLa6wc+fXuk9I4hpFBNJOAmtE6XEV
	yZ7TWlsON2DsaVdiYJy7VISVei7qgXFr30R0Fa8+8b2VshoV1LjD15T+s5QVe+q8AsWJZ4FV5DK
	NX+B7P4o9I3jvorEuRW650bIMQrYMGms5kAWXb+wbgk8bIfxXknZseD+uHF8KOvusFPq2WWmTgN
	0/JKWq8LA1w7mTv24fWVJRxq8isfFE1as7o8f6eM625Im/YRiX/y0rWtxDRpZL31QSIUQO87nqI
	cdyld9bxwL5sFj/KZQ==
X-Received: by 2002:a9d:7dc5:0:b0:7d7:45b7:ed8a with SMTP id
 46e09a7af769-7d9ee135024mr2298331a34.5.1774621546467; Fri, 27 Mar 2026
 07:25:46 -0700 (PDT)
MIME-Version: 1.0
References: <20260317053653.28888-1-mikhail.v.gavrilov@gmail.com>
In-Reply-To: <20260317053653.28888-1-mikhail.v.gavrilov@gmail.com>
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
Date: Fri, 27 Mar 2026 19:25:33 +0500
X-Gm-Features: AQROBzAfh4NA1agUQwts4_skWqTwNVSjJPXSowustcL8qGk_2W0rk3crVq32Jhw
Message-ID: <CABXGCsOCjQQ65uO3c8DFGx+ErLtn9jSVnktb3MgVdHRfU2pbVw@mail.gmail.com>
To: kraxel@redhat.com, vivek.kasireddy@intel.com
X-Spamd-Bar: -----
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QIP2SGBBPKERIBCTOA5REL6G5GE4Z4MH
X-Message-ID-Hash: QIP2SGBBPKERIBCTOA5REL6G5GE4Z4MH
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:52 +0000
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/udmabuf: skip redundant cpu sync to fix cacheline EEXIST warning
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QIP2SGBBPKERIBCTOA5REL6G5GE4Z4MH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[579];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.991];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikhailvgavrilov@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: A4E00431518
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXIgMTcsIDIwMjYgYXQgMTA6MzfigK9BTSBNaWtoYWlsIEdhdnJpbG92DQo8bWlr
aGFpbC52LmdhdnJpbG92QGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IFdoZW4gQ09ORklHX0RNQV9B
UElfREVCVUdfU0cgaXMgZW5hYmxlZCwgaW1wb3J0aW5nIGEgdWRtYWJ1ZiBpbnRvIGEgRFJNDQo+
IGRyaXZlciAoZS5nLiBhbWRncHUgZm9yIHZpZGVvIHBsYXliYWNrIGluIEdOT01FIFZpZGVvcyAv
IFNob3d0aW1lKQ0KPiB0cmlnZ2VycyBhIHNwdXJpb3VzIHdhcm5pbmc6DQo+DQo+ICAgRE1BLUFQ
STogYW1kZ3B1IDAwMDA6MDM6MDAuMDogY2FjaGVsaW5lIHRyYWNraW5nIEVFWElTVCwgXA0KPiAg
ICAgICBvdmVybGFwcGluZyBtYXBwaW5ncyBhcmVuJ3Qgc3VwcG9ydGVkDQo+ICAgV0FSTklORzog
a2VybmVsL2RtYS9kZWJ1Zy5jOjYxOSBhdCBhZGRfZG1hX2VudHJ5KzB4NDczLzB4NWYwDQo+DQo+
IFRoZSBjYWxsIGNoYWluIGlzOg0KPg0KPiAgIGFtZGdwdV9jc19pb2N0bA0KPiAgICAtPiBhbWRn
cHVfdHRtX2JhY2tlbmRfYmluZA0KPiAgICAgLT4gZG1hX2J1Zl9tYXBfYXR0YWNobWVudA0KPiAg
ICAgIC0+IFt1ZG1hYnVmXSBtYXBfdWRtYWJ1ZiAtPiBnZXRfc2dfdGFibGUNCj4gICAgICAgLT4g
ZG1hX21hcF9zZ3RhYmxlKGRldiwgc2csIGRpcmVjdGlvbiwgMCkgIC8vIGF0dHJzPTANCj4gICAg
ICAgIC0+IGRlYnVnX2RtYV9tYXBfc2cgLT4gYWRkX2RtYV9lbnRyeSAtPiBFRVhJU1QNCj4NCj4g
VGhpcyBoYXBwZW5zIGJlY2F1c2UgdWRtYWJ1ZiBidWlsZHMgYSBwZXItcGFnZSBzY2F0dGVyLWdh
dGhlciBsaXN0IHZpYQ0KPiBzZ19zZXRfZm9saW8oKS4gIFdoZW4gYmVnaW5fY3B1X3VkbWFidWYo
KSBoYXMgYWxyZWFkeSBjcmVhdGVkIGFuIHNnDQo+IHRhYmxlIG1hcHBlZCBmb3IgdGhlIG1pc2Mg
ZGV2aWNlLCBhbmQgYW4gaW1wb3J0ZXIgc3VjaCBhcyBhbWRncHUgbWFwcw0KPiB0aGUgc2FtZSBw
YWdlcyBmb3IgaXRzIG93biBkZXZpY2UgdmlhIG1hcF91ZG1hYnVmKCksIHRoZSBETUEgZGVidWcN
Cj4gaW5mcmFzdHJ1Y3R1cmUgc2VlcyB0d28gYWN0aXZlIG1hcHBpbmdzIHdob3NlIHBoeXNpY2Fs
IGFkZHJlc3NlcyBzaGFyZQ0KPiBjYWNoZWxpbmUgYm91bmRhcmllcyBhbmQgd2FybnMgYWJvdXQg
dGhlIG92ZXJsYXAuDQo+DQo+IFRoZSBETUFfQVRUUl9TS0lQX0NQVV9TWU5DIGZsYWcgc3VwcHJl
c3NlcyB0aGlzIGNoZWNrIGluDQo+IGFkZF9kbWFfZW50cnkoKSBiZWNhdXNlIGl0IHNpZ25hbHMg
dGhhdCBubyBDUFUgY2FjaGUgbWFpbnRlbmFuY2UgaXMNCj4gcGVyZm9ybWVkIGF0IG1hcC91bm1h
cCB0aW1lLCBtYWtpbmcgdGhlIGNhY2hlbGluZSBvdmVybGFwIGhhcm1sZXNzLg0KPg0KPiBBbGwg
b3RoZXIgbWFqb3IgZG1hLWJ1ZiBleHBvcnRlcnMgYWxyZWFkeSBwYXNzIHRoaXMgZmxhZzoNCj4g
ICAtIGRybV9nZW1fbWFwX2RtYV9idWYoKSBwYXNzZXMgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQw0K
PiAgIC0gYW1kZ3B1X2RtYV9idWZfbWFwKCkgcGFzc2VzIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMN
Cj4NCj4gVGhlIENQVSBzeW5jIGF0IG1hcC91bm1hcCB0aW1lIGlzIGFsc28gcmVkdW5kYW50IGZv
ciB1ZG1hYnVmOg0KPiBiZWdpbl9jcHVfdWRtYWJ1ZigpIGFuZCBlbmRfY3B1X3VkbWFidWYoKSBh
bHJlYWR5IHBlcmZvcm0gZXhwbGljaXQNCj4gY2FjaGUgc3luY2hyb25pemF0aW9uIHZpYSBkbWFf
c3luY19zZ3RhYmxlX2Zvcl9jcHUvZGV2aWNlKCkgd2hlbiBDUFUNCj4gYWNjZXNzIGlzIHJlcXVl
c3RlZCB0aHJvdWdoIHRoZSBkbWEtYnVmIGludGVyZmFjZS4NCj4NCj4gUGFzcyBETUFfQVRUUl9T
S0lQX0NQVV9TWU5DIHRvIGRtYV9tYXBfc2d0YWJsZSgpIGFuZA0KPiBkbWFfdW5tYXBfc2d0YWJs
ZSgpIGluIHVkbWFidWYgdG8gc3VwcHJlc3MgdGhlIHNwdXJpb3VzIHdhcm5pbmcgYW5kDQo+IHNr
aXAgdGhlIHJlZHVuZGFudCBzeW5jLg0KPg0KPiBGaXhlczogMjg0NTYyZTFmMzQ4ICgidWRtYWJ1
ZjogaW1wbGVtZW50IGJlZ2luX2NwdV9hY2Nlc3MvZW5kX2NwdV9hY2Nlc3MgaG9va3MiKQ0KPiBD
Yzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBTaWduZWQtb2ZmLWJ5OiBNaWtoYWlsIEdhdnJp
bG92IDxtaWtoYWlsLnYuZ2F2cmlsb3ZAZ21haWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZG1h
LWJ1Zi91ZG1hYnVmLmMgfCA0ICsrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvdWRt
YWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYw0KPiBpbmRleCA5NGI4ZWNiODkyYmIu
LjljNmY4Nzg1YTI4YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYw0K
PiArKysgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+IEBAIC0xNjIsNyArMTYyLDcgQEAg
c3RhdGljIHN0cnVjdCBzZ190YWJsZSAqZ2V0X3NnX3RhYmxlKHN0cnVjdCBkZXZpY2UgKmRldiwg
c3RydWN0IGRtYV9idWYgKmJ1ZiwNCj4gICAgICAgICAgICAgICAgIHNnX3NldF9mb2xpbyhzZ2ws
IHVidWYtPmZvbGlvc1tpXSwgUEFHRV9TSVpFLA0KPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHVidWYtPm9mZnNldHNbaV0pOw0KPg0KPiAtICAgICAgIHJldCA9IGRtYV9tYXBfc2d0YWJs
ZShkZXYsIHNnLCBkaXJlY3Rpb24sIDApOw0KPiArICAgICAgIHJldCA9IGRtYV9tYXBfc2d0YWJs
ZShkZXYsIHNnLCBkaXJlY3Rpb24sIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOw0KPiAgICAgICAg
IGlmIChyZXQgPCAwKQ0KPiAgICAgICAgICAgICAgICAgZ290byBlcnJfbWFwOw0KPiAgICAgICAg
IHJldHVybiBzZzsNCj4gQEAgLTE3Nyw3ICsxNzcsNyBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxl
ICpnZXRfc2dfdGFibGUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZG1hX2J1ZiAqYnVmLA0K
PiAgc3RhdGljIHZvaWQgcHV0X3NnX3RhYmxlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHNn
X3RhYmxlICpzZywNCj4gICAgICAgICAgICAgICAgICAgICAgICAgIGVudW0gZG1hX2RhdGFfZGly
ZWN0aW9uIGRpcmVjdGlvbikNCj4gIHsNCj4gLSAgICAgICBkbWFfdW5tYXBfc2d0YWJsZShkZXYs
IHNnLCBkaXJlY3Rpb24sIDApOw0KPiArICAgICAgIGRtYV91bm1hcF9zZ3RhYmxlKGRldiwgc2cs
IGRpcmVjdGlvbiwgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7DQo+ICAgICAgICAgc2dfZnJlZV90
YWJsZShzZyk7DQo+ICAgICAgICAga2ZyZWUoc2cpOw0KPiAgfQ0KPiAtLQ0KPiAyLjUzLjANCj4N
Cg0KR2VudGxlIHBpbmcgb24gdGhpcyBwYXRjaC4NCg0KVG8gc3VtbWFyaXplIHRoZSByZXZpZXcg
c28gZmFyOg0KICBWaXZlazogIkxvb2tzIE9LIHRvIG1lIg0KICBDaHJpc3RpYW46IEFja2VkLWJ5
DQoNCk5vdGU6IHdoaWxlIG15IHNlcGFyYXRlIGRtYS1kZWJ1ZyBwYXRjaCBbMV0gd291bGQgYWxz
byBzdXBwcmVzcw0KdGhpcyBzcGVjaWZpYyB3YXJuaW5nIG9uIHg4NiwgdGhlIHVkbWFidWYgZml4
IGhlcmUgaXMgc3RpbGwNCnZhbHVhYmxlIGFzIGl0IHJlbW92ZXMgdGhlIHJlZHVuZGFudCBDUFUg
c3luYyBhdCBtYXAvdW5tYXAgdGltZQ0KYW5kIGFsaWducyB1ZG1hYnVmIHdpdGggb3RoZXIgZG1h
LWJ1ZiBleHBvcnRlcnMgdGhhdCBhbHJlYWR5DQpwYXNzIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMu
DQoNClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjAzMjcxMjQxNTYuMjQ4MjAt
MS1taWtoYWlsLnYuZ2F2cmlsb3ZAZ21haWwuY29tLw0KDQpHZXJkLCBjb3VsZCB5b3UgdGFrZSBh
IGxvb2sgd2hlbiB5b3UgaGF2ZSBhIGNoYW5jZT8NCg0KLS0gDQpCZXN0IFJlZ2FyZHMsDQpNaWtl
IEdhdnJpbG92Lg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
