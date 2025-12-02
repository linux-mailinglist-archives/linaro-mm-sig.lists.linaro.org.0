Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8M5qJhgC4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:36:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F67410FC4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:36:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9862B447BE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:36:55 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	by lists.linaro.org (Postfix) with ESMTPS id 7B91F3F719
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Dec 2025 14:03:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=JNfUHHz1;
	spf=pass (lists.linaro.org: domain of urezki@gmail.com designates 209.85.208.180 as permitted sender) smtp.mailfrom=urezki@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-37a33f49018so45658161fa.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Dec 2025 06:03:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764684194; x=1765288994; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Qv1K7J2piWEBLYsmYS5El8b8US/OwNpgXHLpQ7GMrlY=;
        b=JNfUHHz1lD/l4u5pEtK+jKFIRRvjHHyiwcexvm1USCt+b4kL6M5Jh6pfqXJ5++nkwK
         TQZTK8hb0PZZHkj1w7rooKixOqh9mZhkv5TUeZK4VAASedm4EpGBC+s0v7/DMuid2kth
         CF42pYwYpEBGKRGHWaGgGKO9YsOBzFR9wrg+B1omm85bwgy8KmLhNtA98g3dZTQ9Vc00
         DatjSVi/H2200dV7CYiDyiq/xBxHXrW2A7LTfwx32lagnB0BpoJzhdUS/vV6MAb3lCQY
         MANp2oyMHEtPCI1G2u3KtSpyUJ3LGw5jk1OKL9530eMopIUviR2X6e+0jS2A2ZeJy30N
         8hig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764684194; x=1765288994;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qv1K7J2piWEBLYsmYS5El8b8US/OwNpgXHLpQ7GMrlY=;
        b=NXaBC6q8ZzOryyRJ5cslunv/o/6ZzSFtnuFztOzPANi9W5hw2GTbINJfA54gmftmXD
         y6T4MHMKyed3PS2k1iJG9ukc2mvz4dYL0JJCVq2hKTXPo01d0qSOCyLf+QREnmhEuxmF
         wV4O72yg7OoVXxGAkxbdt9Iho47GiRwwOIf7sivakn/2a7LNHHQ+y1HtloJVVDxP1ZMS
         Uj5YkelzuZWY1bkKJteElCp8pbZ7y88jtShswhhd8/FVAuDb37JjPJVvR+MGp536DW6V
         UwPtAjATR2tx3jug5kgXw2WWXIpnOzkJuVJQHdM9D326j0mPs3k1amMS3R6Wn1BDYL9o
         1Ddw==
X-Forwarded-Encrypted: i=1; AJvYcCVaR0rXqPNCExTdzmQHAqNDeAi66KFE0M22w3uuAu8vdPpOLB9OV+Zicggyj7nV4fR46A+Vp/uvc92CUR4Z@lists.linaro.org
X-Gm-Message-State: AOJu0Yxw4uJw0dzLfB1u97rcKYoJErCBitragQyWMTj95wNpursLjEpk
	Ryd9Im9Jv7EQybogqqGd3Ko9jeD7t79NTPP5CRz+XVyUufKdwKK9NSHw
X-Gm-Gg: ASbGnctaDtjl27JNdsOgU1RlxHI6/iz71xejVYU8YLz1cBKTgREnjhIEyeLTYu+3nWx
	wmcasMn26/pHFg2dgJ3ZDFcBBjW7CzPPRMdpH/t78N1wmxPlr87HKPafSg7woYjrNIAL+s1fQBl
	OkLKQEOhKlaEb9Oaey0e7al6J2qwHAgnxAzOCK4OxiN1WK1kR6BhNF0bGY0CDU+Q65kdGeD/nJE
	+ZpNcgKODNzkjr1hYqNSFta8Qiq8Lh2TcKv72TyAxGZrV5Edw35E6DKjifhHruYu2bSX1WmJwsN
	x24MCLBXjh/XQA6FCLHaWqf1FYDOsI7uqlCH/U26oCXKFWSG6vkRMqsejBb89o5aWZBANlFuJY6
	9SruMbgyqBjTDul8o4xN17p+UE6dC/Gbo8/16nK317lNRlfPJTvdbaKltnWhQFtuTPZXU5YjGFG
	NYtxujYMPzOLJB+TT1YguujOnXv64qMTsy
X-Google-Smtp-Source: AGHT+IFMPwW4Ci4ma2kd/bf6E5zfBDbaLqbg0ejouUGZkkjz6Fd31OThqfP5IxcvJU8zZMZi6pGF4A==
X-Received: by 2002:a05:6512:1149:b0:595:90f9:b9d2 with SMTP id 2adb3069b0e04-596a3ea67c2mr17072594e87.3.1764684193847;
        Tue, 02 Dec 2025 06:03:13 -0800 (PST)
Received: from pc636 (host-95-203-3-14.mobileonline.telia.com. [95.203.3.14])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-596bfa48c5dsm4644152e87.77.2025.12.02.06.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 06:03:12 -0800 (PST)
From: Uladzislau Rezki <urezki@gmail.com>
X-Google-Original-From: Uladzislau Rezki <urezki@pc636>
Date: Tue, 2 Dec 2025 15:03:10 +0100
To: Barry Song <21cnbao@gmail.com>
Message-ID: <aS7xnhxNhJ71cJRb@pc636>
References: <20251122090343.81243-1-21cnbao@gmail.com>
 <aSiB-UsunuE7u295@milan>
 <CAGsJ_4z21fN2KSg6jt_qveYgrKZw1Vsi_kb+uhed=RJAbujMHw@mail.gmail.com>
 <aS13J6U-QMOrwwbs@milan>
 <CAGsJ_4yGLdhk84Ent8VRcE4_2Am_U=bXTVdV2LHDBtD2OZs8xg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGsJ_4yGLdhk84Ent8VRcE4_2Am_U=bXTVdV2LHDBtD2OZs8xg@mail.gmail.com>
X-Spamd-Bar: ---
X-MailFrom: urezki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IYXCUL6MR7FHPIHOHE7CUTWRV6MHRNG6
X-Message-ID-Hash: IYXCUL6MR7FHPIHOHE7CUTWRV6MHRNG6
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:12 +0000
CC: Uladzislau Rezki <urezki@gmail.com>, akpm@linux-foundation.org, linux-mm@kvack.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Barry Song <v-songbaohua@oppo.com>, Sumit Semwal <sumit.semwal@linaro.org>, John Stultz <jstultz@google.com>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC] mm/vmap: map contiguous pages in batches whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IYXCUL6MR7FHPIHOHE7CUTWRV6MHRNG6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.19 / 15.00];
	DATE_IN_PAST(1.00)[3241];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.221];
	FROM_NEQ_ENVFROM(0.00)[urezki@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-foundation.org,kvack.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,oppo.com,linaro.org,google.com,kernel.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 79F67410FC4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBEZWMgMDIsIDIwMjUgYXQgMDY6MDU6NTZBTSArMDgwMCwgQmFycnkgU29uZyB3cm90
ZToNCj4gT24gTW9uLCBEZWMgMSwgMjAyNSBhdCA3OjA44oCvUE0gVWxhZHppc2xhdSBSZXpraSA8
dXJlemtpQGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBPbiBGcmksIE5vdiAyOCwgMjAyNSBh
dCAwNDo0Mzo1NEFNICswODAwLCBCYXJyeSBTb25nIHdyb3RlOg0KPiA+ID4gPiA+DQo+ID4gPiA+
ID4gKyAgICAgLyoNCj4gPiA+ID4gPiArICAgICAgKiBTb21lIHVzZXJzIG1heSBhbGxvY2F0ZSBw
YWdlcyBmcm9tIGhpZ2gtb3JkZXIgZG93biB0byBvcmRlciAwLg0KPiA+ID4gPiA+ICsgICAgICAq
IFdlIHJvdWdobHkgY2hlY2sgaWYgdGhlIGZpcnN0IHBhZ2UgaXMgYSBjb21wb3VuZCBwYWdlLiBJ
ZiBzbywNCj4gPiA+ID4gPiArICAgICAgKiB0aGVyZSBpcyBhIGNoYW5jZSB0byBiYXRjaCBtdWx0
aXBsZSBwYWdlcyB0b2dldGhlci4NCj4gPiA+ID4gPiArICAgICAgKi8NCj4gPiA+ID4gPiAgICAg
ICBpZiAoIUlTX0VOQUJMRUQoQ09ORklHX0hBVkVfQVJDSF9IVUdFX1ZNQUxMT0MpIHx8DQo+ID4g
PiA+ID4gLSAgICAgICAgICAgICAgICAgICAgIHBhZ2Vfc2hpZnQgPT0gUEFHRV9TSElGVCkNCj4g
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgKHBhZ2Vfc2hpZnQgPT0gUEFHRV9TSElGVCAm
JiAhUGFnZUNvbXBvdW5kKHBhZ2VzWzBdKSkpDQo+ID4gPiA+ID4NCj4gPiA+ID4gRG8gd2Ugc3Vw
cG9ydCBfX0dGUF9DT01QIGFzIHZtYWxsb2Mvdm1hcCBmbGFnPyBBcyBpIHNlZSBmcm9tIGxhdGVz
dDoNCj4gPiA+DQo+ID4gPiBUaGlzIGlzIG5vdCB0aGUgY2FzZSBmb3Igdm1hbGxvYywgYnV0IGFw
cGxpZXMgdG8gZG1hLWJ1ZnMgdGhhdCBhcmUgYWxsb2NhdGVkDQo+ID4gPiB1c2luZyBhbGxvY19w
YWdlcygpIHdpdGggR0ZQX0NPTVAuDQo+ID4gPg0KPiA+ID4gI2RlZmluZSBMT1dfT1JERVJfR0ZQ
IChHRlBfSElHSFVTRVIgfCBfX0dGUF9aRVJPKQ0KPiA+ID4gI2RlZmluZSBISUdIX09SREVSX0dG
UCAgKCgoR0ZQX0hJR0hVU0VSIHwgX19HRlBfWkVSTyB8IF9fR0ZQX05PV0FSTiBcDQo+ID4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgX19HRlBfTk9SRVRSWSkgJiB+X19HRlBf
UkVDTEFJTSkgXA0KPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IF9fR0ZQ
X0NPTVApDQo+ID4gPg0KPiA+ID4gPg0KPiA+ID4gPiAvKg0KPiA+ID4gPiAgKiBTZWUgX192bWFs
bG9jX25vZGVfcmFuZ2UoKSBmb3IgYSBjbGVhciBsaXN0IG9mIHN1cHBvcnRlZCB2bWFsbG9jIGZs
YWdzLg0KPiA+ID4gPiAgKiBUaGlzIGdmcCBsaXN0cyBhbGwgZmxhZ3MgY3VycmVudGx5IHBhc3Nl
ZCB0aHJvdWdoIHZtYWxsb2MuIEN1cnJlbnRseSwNCj4gPiA+ID4gICogX19HRlBfWkVSTyBpcyB1
c2VkIGJ5IEJQRiBhbmQgX19HRlBfTk9SRVRSWSBpcyB1c2VkIGJ5IHBlcmNwdS4gQm90aCBkcm0N
Cj4gPiA+ID4gICogYW5kIEJQRiBhbHNvIHVzZSBHRlBfVVNFUi4gQWRkaXRpb25hbGx5LCB2YXJp
b3VzIHVzZXJzIHBhc3MNCj4gPiA+ID4gICogR0ZQX0tFUk5FTF9BQ0NPVU5ULiBYZnMgdXNlcyBf
X0dGUF9OT0xPQ0tERVAuDQo+ID4gPiA+ICAqLw0KPiA+ID4gPiAjZGVmaW5lIEdGUF9WTUFMTE9D
X1NVUFBPUlRFRCAoR0ZQX0tFUk5FTCB8IEdGUF9BVE9NSUMgfCBHRlBfTk9XQUlUIHxcDQo+ID4g
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBfX0dGUF9OT0ZBSUwgfCAgX19HRlBf
WkVSTyB8IF9fR0ZQX05PUkVUUlkgfFwNCj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIEdGUF9OT0ZTIHwgR0ZQX05PSU8gfCBHRlBfS0VSTkVMX0FDQ09VTlQgfFwNCj4gPiA+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdGUF9VU0VSIHwgX19HRlBfTk9MT0NL
REVQKQ0KPiA+ID4gPg0KPiA+ID4gPiBDb3VsZCB5b3UgcGxlYXNlIGNsYXJpZnkgd2hlbiBQYWdl
Q29tcG91bmQocGFnZXNbMF0pIHJldHVybnMgdHJ1ZT8NCj4gPiA+ID4NCj4gPiA+DQo+ID4gPiBJ
biB0aGlzIGNhc2UsIGRtYS1idWYgYXR0ZW1wdHMgdG8gYWxsb2NhdGUgYXMgbWFueSBjb21wb3Vu
ZCBoaWdoLW9yZGVyIHBhZ2VzDQo+ID4gPiBhcyBwb3NzaWJsZSwgZmFsbGluZyBiYWNrIHRvIDAt
b3JkZXIgYWxsb2NhdGlvbnMgaWYgbmVjZXNzYXJ5Lg0KPiA+ID4NCj4gPiBPSywgaXQgaXMgZm9s
aW8gd2hvIHVzZXMgaXQuDQo+ID4NCj4gPiA+IFRoZW4sIGRtYV9idWZfdm1hcCgpIGlzIGNhbGxl
ZCBieSB0aGUgR1BVIGRyaXZlcnM6DQo+ID4gPg0KPiA+ID4gIDEgICAgNDA0ICBkcml2ZXJzL2Fj
Y2VsL2FtZHhkbmEvYW1keGRuYV9nZW0uYyA8PGFtZHhkbmFfZ2VtX29ial92bWFwPj4NCj4gPiA+
ICAgICAgICAgICAgICBkbWFfYnVmX3ZtYXAoYWJvLT5kbWFfYnVmLCBtYXApOw0KPiA+ID4gICAg
MiAgIDE1NjggIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgPDxkbWFfYnVmX3ZtYXBfdW5sb2Nr
ZWQ+Pg0KPiA+ID4gICAgICAgICAgICAgIHJldCA9IGRtYV9idWZfdm1hcChkbWFidWYsIG1hcCk7
DQo+ID4gPiAgICAzICAgIDM1NCAgZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVy
LmMNCj4gPiA+IDw8ZHJtX2dlbV9zaG1lbV92bWFwX2xvY2tlZD4+DQo+ID4gPiAgICAgICAgICAg
ICAgcmV0ID0gZG1hX2J1Zl92bWFwKG9iai0+aW1wb3J0X2F0dGFjaC0+ZG1hYnVmLCBtYXApOw0K
PiA+ID4gICAgNCAgICAgODUgIGRyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtX3By
aW1lLmMNCj4gPiA+IDw8ZXRuYXZpdl9nZW1fcHJpbWVfdm1hcF9pbXBsPj4NCj4gPiA+ICAgICAg
ICAgICAgICByZXQgPSBkbWFfYnVmX3ZtYXAoZXRuYXZpdl9vYmotPmJhc2UuaW1wb3J0X2F0dGFj
aC0+ZG1hYnVmLCAmbWFwKTsNCj4gPiA+ICAgIDUgICAgNDMzICBkcml2ZXJzL2dwdS9kcm0vdm13
Z2Z4L3Ztd2dmeF9ibGl0LmMgPDxtYXBfZXh0ZXJuYWw+Pg0KPiA+ID4gICAgICAgICAgICAgIHJl
dCA9IGRtYV9idWZfdm1hcChiby0+dGJvLmJhc2UuZG1hX2J1ZiwgbWFwKTsNCj4gPiA+ICAgIDYg
ICAgIDg4ICBkcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9nZW0uYyA8PHZtd19nZW1fdm1h
cD4+DQo+ID4gPiAgICAgICAgICAgICAgcmV0ID0gZG1hX2J1Zl92bWFwKG9iai0+aW1wb3J0X2F0
dGFjaC0+ZG1hYnVmLCBtYXApOw0KPiA+ID4NCj4gPiBUaGFuayB5b3UgZm9yIGNsYXJpZmljYXRp
b24uIFRoYXQgd291bGQgYmUgZ29vZCB0byByZWZsZWN0IGl0IGluIHRoZQ0KPiA+IGNvbW1pdCBt
ZXNzYWdlLiBBbHNvLCBwbGVhc2Ugbm90ZSB0aGF0Og0KPiANCj4gU3VyZS4NCj4gDQo+ID4NCj4g
PiA+ICAgICAgIGlmICghSVNfRU5BQkxFRChDT05GSUdfSEFWRV9BUkNIX0hVR0VfVk1BTExPQykg
fHwNCj4gPiA+IC0gICAgICAgICAgICAgICAgICAgICBwYWdlX3NoaWZ0ID09IFBBR0VfU0hJRlQp
DQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgKHBhZ2Vfc2hpZnQgPT0gUEFHRV9TSElGVCAm
JiAhUGFnZUNvbXBvdW5kKHBhZ2VzWzBdKSkpDQo+ID4gPg0KPiA+IHdlIHJlbHkgb24gcGFnZV9z
aGlmdCA9PSBQQUdFX1NISUZUIGNvbmRpdGlvbiBmb3IgdGhlIG5vbi1zbGVlcCB2bWFsbG9jKCkN
Cj4gPiBhbGxvY2F0aW9ucyhHRlBfQVRPTUlDLCBHRlBfTk9XQUlUKSwgc28gd2UgZ28gdmlhIHZt
YXBfc21hbGxfcGFnZXNfcmFuZ2Vfbm9mbHVzaCgpDQo+ID4gcGF0aC4gWW91ciBwYXRjaCBhZGRz
ICFQYWdlQ29tcG91bmQocGFnZXNbMF0pIGFsc28uIEl0IGlzIG5vdCBhIHByb2JsZW0NCj4gPiBz
aW5jZSBpdCBpcyB2bWFwKCkgcGF0aCBidXQgd2UgbmVlZCB0byBjb21tZW50IHRoYXQuDQo+IA0K
PiBTdXJlLiBXb3VsZCB0aGUgZm9sbG93aW5nIHdvcms/DQo+IA0KPiAgICAgICAgIC8qDQo+ICAg
ICAgICAgICogRm9yIHZtYXAoKSwgdXNlcnMgbWF5IGFsbG9jYXRlIHBhZ2VzIGZyb20gaGlnaCBv
cmRlcnMgZG93bg0KPiB0byBvcmRlciAwLA0KPiAgICAgICAgICAqIHdoaWxlIGFsd2F5cyB1c2lu
ZyBQQUdFX1NISUZUIGFzIHRoZSBwYWdlX3NoaWZ0Lg0KPiAgICAgICAgICAqIFdlIGZpcnN0IGNo
ZWNrIHdoZXRoZXIgdGhlIGluaXRpYWwgcGFnZSBpcyBhIGNvbXBvdW5kIHBhZ2UuIElmIHNvLA0K
PiAgICAgICAgICAqIHRoZXJlIG1heSBiZSBhbiBvcHBvcnR1bml0eSB0byBiYXRjaCBtdWx0aXBs
ZSBwYWdlcyB0b2dldGhlci4NCj4gICAgICAgICAgKi8NCj4gICAgICAgICBpZiAoIUlTX0VOQUJM
RUQoQ09ORklHX0hBVkVfQVJDSF9IVUdFX1ZNQUxMT0MpIHx8DQo+ICAgICAgICAgICAgICAgICAg
ICAgICAgIChwYWdlX3NoaWZ0ID09IFBBR0VfU0hJRlQgJiYgIVBhZ2VDb21wb3VuZChwYWdlc1sw
XSkpKQ0KPiAgICAgICAgICAgICAgICAgcmV0dXJuIHZtYXBfc21hbGxfcGFnZXNfcmFuZ2Vfbm9m
bHVzaChhZGRyLCBlbmQsIHByb3QsIHBhZ2VzKTsNCj4gDQpTb3VuZHMgZ29vZCENCg0KVGhhbmsg
eW91Lg0KDQotLQ0KVWxhZHppc2xhdSBSZXpraQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
