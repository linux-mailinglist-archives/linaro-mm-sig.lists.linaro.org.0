Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGUGIPQB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:36:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF6E410F88
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:36:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79FE4446DE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:36:19 +0000 (UTC)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	by lists.linaro.org (Postfix) with ESMTPS id B11573F7A5
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Dec 2025 22:06:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=CSzH83x9;
	spf=pass (lists.linaro.org: domain of 21cnbao@gmail.com designates 209.85.217.47 as permitted sender) smtp.mailfrom=21cnbao@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5dde4444e0cso1738721137.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Dec 2025 14:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764626768; x=1765231568; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RjsD19aCUMHa2E8WfpptbpfT6kxnKtjPzjy54H5oDQE=;
        b=CSzH83x9jii5R9+2DTndx54hdFl1vwCgYH+LDh9SH4xELvy3rtwsCV8qegJGp8GnrS
         1dDui1v57gagwOa6Q5Vg5SZdAoVtFZVwQHP+/r84ZfOGAkKp4yXAmXfWDvqoTE67faKC
         gpzcl4LsYb78q5l/qNsLVSYfKKPWAa2JUM94L2ToZH2v/CL1UZDTLIISa07LZ6SLxcSc
         iAGZC8dCwaJQw+uPDv5HEecCBajZYRyqR6QqLL+AkSMZqXco6S+JXVPRmGBOyHR6pg7n
         xF4hNsfGcfGXeWru1jrh0DhVJokF+NGW0MMMNsTmKiBezouycz33anEJS+iHRkDmQSXo
         4Nlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764626768; x=1765231568;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RjsD19aCUMHa2E8WfpptbpfT6kxnKtjPzjy54H5oDQE=;
        b=D6JhCSV0LFC8AMVQwIXnswL3Thi8mXMJqY4isVYcFTbW6w8ewkKyssrnXPNvMWl657
         h2lXMa0xqOk9gY2U9y13uUkCaONbn14TCFURMgOEGeeiLszbPBBIcFvacQ5u7Wa8z75f
         pcX7OwBdfhaYJT35MBnnHHUe4kE9myCiOyHvQTZAlercDluh4VP/IuiWy7D+DGhPNxYS
         Wnr/ZKGMUQqV6CGvesMvcDbYHKk8aHPA9iMjuUPJOemnhDwq1eHHH1CYKQXDnEciEuXA
         YvdDh//OqZmSRXGiKohS7eGaejMDDPbVBV6oL8tLnAvfkLhYxlEJ2Lpvc+vdMwzgndjT
         eNIw==
X-Forwarded-Encrypted: i=1; AJvYcCVWMzzT8zlPrKoCTUUHpGVvTyBOjwdx09n7/lyovTyPZM/5zogRbba0cLIWi6fAn3wHJxjOLiezhVP77L0h@lists.linaro.org
X-Gm-Message-State: AOJu0Yw+20aKaNLQebEzJVIaYI+wBmXKgADxjSNi2nbSBxiYCFYT0trN
	3Dskfv9SizhIHkmRoLSeGpWysyHOfZtmaoObK7zWY4i3MIvIJJe5KuI9DWrAqM9w/rx1un44RRs
	Cs3Yhq+DLboJSuzpB6q/qz5vtGpT57JY=
X-Gm-Gg: ASbGncvToqXkP7JmjU3GsQQQ6nN8iZiBhO5t2hbUCjQB1SH6MQsEqC8DEhq4ekwXZyp
	bQQyuaNUq/E8va6s5Ml6ImriPfN9B1hNSAmZAgpVcmAVjdoPO1AgMNHsH+zlwbmlGXD0CSlbExf
	qn5rVKYk9TDvLsHbpzMz2slGEwn1f5Wzu1kaMRQsBEjfKNFdt+uxNws/KoUie3p+4R0FUJg2Ex5
	5qVAre6uX3gUGLNUD281PnNMGFVFlaj6IvPDX7u9d2WMbe60nfZhErAfPx1/zJDBUW/Mg==
X-Google-Smtp-Source: AGHT+IHy9MubOTLG2etzaabSpxtKy1Lb/AjgjOqAEtXPMeO1sBbpyDe9CCi6vq0uRyBGY3AdXltB4if2OEMaCAYo1tg=
X-Received: by 2002:a05:6102:5805:b0:5db:c987:d8f4 with SMTP id
 ada2fe7eead31-5e22421c58amr9629989137.7.1764626767957; Mon, 01 Dec 2025
 14:06:07 -0800 (PST)
MIME-Version: 1.0
References: <20251122090343.81243-1-21cnbao@gmail.com> <aSiB-UsunuE7u295@milan>
 <CAGsJ_4z21fN2KSg6jt_qveYgrKZw1Vsi_kb+uhed=RJAbujMHw@mail.gmail.com> <aS13J6U-QMOrwwbs@milan>
In-Reply-To: <aS13J6U-QMOrwwbs@milan>
From: Barry Song <21cnbao@gmail.com>
Date: Tue, 2 Dec 2025 06:05:56 +0800
X-Gm-Features: AWmQ_bmgxK1g1aP9fycsrkY4ZrS4yYO9pthpUyw8iDWG0FYFC6_bJ-WYcNubwhU
Message-ID: <CAGsJ_4yGLdhk84Ent8VRcE4_2Am_U=bXTVdV2LHDBtD2OZs8xg@mail.gmail.com>
To: Uladzislau Rezki <urezki@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: 21cnbao@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HKLU2O73CEOCKBWZJOQPTHNNFKQF4CZF
X-Message-ID-Hash: HKLU2O73CEOCKBWZJOQPTHNNFKQF4CZF
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:09 +0000
CC: akpm@linux-foundation.org, linux-mm@kvack.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Barry Song <v-songbaohua@oppo.com>, Sumit Semwal <sumit.semwal@linaro.org>, John Stultz <jstultz@google.com>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC] mm/vmap: map contiguous pages in batches whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HKLU2O73CEOCKBWZJOQPTHNNFKQF4CZF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[3257];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.678];
	FROM_NEQ_ENVFROM(0.00)[21cnbao@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5EF6E410F88
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBEZWMgMSwgMjAyNSBhdCA3OjA44oCvUE0gVWxhZHppc2xhdSBSZXpraSA8dXJlemtp
QGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IE9uIEZyaSwgTm92IDI4LCAyMDI1IGF0IDA0OjQzOjU0
QU0gKzA4MDAsIEJhcnJ5IFNvbmcgd3JvdGU6DQo+ID4gPiA+DQo+ID4gPiA+ICsgICAgIC8qDQo+
ID4gPiA+ICsgICAgICAqIFNvbWUgdXNlcnMgbWF5IGFsbG9jYXRlIHBhZ2VzIGZyb20gaGlnaC1v
cmRlciBkb3duIHRvIG9yZGVyIDAuDQo+ID4gPiA+ICsgICAgICAqIFdlIHJvdWdobHkgY2hlY2sg
aWYgdGhlIGZpcnN0IHBhZ2UgaXMgYSBjb21wb3VuZCBwYWdlLiBJZiBzbywNCj4gPiA+ID4gKyAg
ICAgICogdGhlcmUgaXMgYSBjaGFuY2UgdG8gYmF0Y2ggbXVsdGlwbGUgcGFnZXMgdG9nZXRoZXIu
DQo+ID4gPiA+ICsgICAgICAqLw0KPiA+ID4gPiAgICAgICBpZiAoIUlTX0VOQUJMRUQoQ09ORklH
X0hBVkVfQVJDSF9IVUdFX1ZNQUxMT0MpIHx8DQo+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAg
ICBwYWdlX3NoaWZ0ID09IFBBR0VfU0hJRlQpDQo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAocGFnZV9zaGlmdCA9PSBQQUdFX1NISUZUICYmICFQYWdlQ29tcG91bmQocGFnZXNbMF0pKSkN
Cj4gPiA+ID4NCj4gPiA+IERvIHdlIHN1cHBvcnQgX19HRlBfQ09NUCBhcyB2bWFsbG9jL3ZtYXAg
ZmxhZz8gQXMgaSBzZWUgZnJvbSBsYXRlc3Q6DQo+ID4NCj4gPiBUaGlzIGlzIG5vdCB0aGUgY2Fz
ZSBmb3Igdm1hbGxvYywgYnV0IGFwcGxpZXMgdG8gZG1hLWJ1ZnMgdGhhdCBhcmUgYWxsb2NhdGVk
DQo+ID4gdXNpbmcgYWxsb2NfcGFnZXMoKSB3aXRoIEdGUF9DT01QLg0KPiA+DQo+ID4gI2RlZmlu
ZSBMT1dfT1JERVJfR0ZQIChHRlBfSElHSFVTRVIgfCBfX0dGUF9aRVJPKQ0KPiA+ICNkZWZpbmUg
SElHSF9PUkRFUl9HRlAgICgoKEdGUF9ISUdIVVNFUiB8IF9fR0ZQX1pFUk8gfCBfX0dGUF9OT1dB
Uk4gXA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCBfX0dGUF9OT1JFVFJZ
KSAmIH5fX0dGUF9SRUNMQUlNKSBcDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8IF9fR0ZQX0NPTVApDQo+ID4NCj4gPiA+DQo+ID4gPiAvKg0KPiA+ID4gICogU2VlIF9fdm1h
bGxvY19ub2RlX3JhbmdlKCkgZm9yIGEgY2xlYXIgbGlzdCBvZiBzdXBwb3J0ZWQgdm1hbGxvYyBm
bGFncy4NCj4gPiA+ICAqIFRoaXMgZ2ZwIGxpc3RzIGFsbCBmbGFncyBjdXJyZW50bHkgcGFzc2Vk
IHRocm91Z2ggdm1hbGxvYy4gQ3VycmVudGx5LA0KPiA+ID4gICogX19HRlBfWkVSTyBpcyB1c2Vk
IGJ5IEJQRiBhbmQgX19HRlBfTk9SRVRSWSBpcyB1c2VkIGJ5IHBlcmNwdS4gQm90aCBkcm0NCj4g
PiA+ICAqIGFuZCBCUEYgYWxzbyB1c2UgR0ZQX1VTRVIuIEFkZGl0aW9uYWxseSwgdmFyaW91cyB1
c2VycyBwYXNzDQo+ID4gPiAgKiBHRlBfS0VSTkVMX0FDQ09VTlQuIFhmcyB1c2VzIF9fR0ZQX05P
TE9DS0RFUC4NCj4gPiA+ICAqLw0KPiA+ID4gI2RlZmluZSBHRlBfVk1BTExPQ19TVVBQT1JURUQg
KEdGUF9LRVJORUwgfCBHRlBfQVRPTUlDIHwgR0ZQX05PV0FJVCB8XA0KPiA+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIF9fR0ZQX05PRkFJTCB8ICBfX0dGUF9aRVJPIHwgX19HRlBf
Tk9SRVRSWSB8XA0KPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdGUF9OT0ZT
IHwgR0ZQX05PSU8gfCBHRlBfS0VSTkVMX0FDQ09VTlQgfFwNCj4gPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBHRlBfVVNFUiB8IF9fR0ZQX05PTE9DS0RFUCkNCj4gPiA+DQo+ID4g
PiBDb3VsZCB5b3UgcGxlYXNlIGNsYXJpZnkgd2hlbiBQYWdlQ29tcG91bmQocGFnZXNbMF0pIHJl
dHVybnMgdHJ1ZT8NCj4gPiA+DQo+ID4NCj4gPiBJbiB0aGlzIGNhc2UsIGRtYS1idWYgYXR0ZW1w
dHMgdG8gYWxsb2NhdGUgYXMgbWFueSBjb21wb3VuZCBoaWdoLW9yZGVyIHBhZ2VzDQo+ID4gYXMg
cG9zc2libGUsIGZhbGxpbmcgYmFjayB0byAwLW9yZGVyIGFsbG9jYXRpb25zIGlmIG5lY2Vzc2Fy
eS4NCj4gPg0KPiBPSywgaXQgaXMgZm9saW8gd2hvIHVzZXMgaXQuDQo+DQo+ID4gVGhlbiwgZG1h
X2J1Zl92bWFwKCkgaXMgY2FsbGVkIGJ5IHRoZSBHUFUgZHJpdmVyczoNCj4gPg0KPiA+ICAxICAg
IDQwNCAgZHJpdmVycy9hY2NlbC9hbWR4ZG5hL2FtZHhkbmFfZ2VtLmMgPDxhbWR4ZG5hX2dlbV9v
Ympfdm1hcD4+DQo+ID4gICAgICAgICAgICAgIGRtYV9idWZfdm1hcChhYm8tPmRtYV9idWYsIG1h
cCk7DQo+ID4gICAgMiAgIDE1NjggIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgPDxkbWFfYnVm
X3ZtYXBfdW5sb2NrZWQ+Pg0KPiA+ICAgICAgICAgICAgICByZXQgPSBkbWFfYnVmX3ZtYXAoZG1h
YnVmLCBtYXApOw0KPiA+ICAgIDMgICAgMzU0ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1l
bV9oZWxwZXIuYw0KPiA+IDw8ZHJtX2dlbV9zaG1lbV92bWFwX2xvY2tlZD4+DQo+ID4gICAgICAg
ICAgICAgIHJldCA9IGRtYV9idWZfdm1hcChvYmotPmltcG9ydF9hdHRhY2gtPmRtYWJ1ZiwgbWFw
KTsNCj4gPiAgICA0ICAgICA4NSAgZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW1f
cHJpbWUuYw0KPiA+IDw8ZXRuYXZpdl9nZW1fcHJpbWVfdm1hcF9pbXBsPj4NCj4gPiAgICAgICAg
ICAgICAgcmV0ID0gZG1hX2J1Zl92bWFwKGV0bmF2aXZfb2JqLT5iYXNlLmltcG9ydF9hdHRhY2gt
PmRtYWJ1ZiwgJm1hcCk7DQo+ID4gICAgNSAgICA0MzMgIGRyaXZlcnMvZ3B1L2RybS92bXdnZngv
dm13Z2Z4X2JsaXQuYyA8PG1hcF9leHRlcm5hbD4+DQo+ID4gICAgICAgICAgICAgIHJldCA9IGRt
YV9idWZfdm1hcChiby0+dGJvLmJhc2UuZG1hX2J1ZiwgbWFwKTsNCj4gPiAgICA2ICAgICA4OCAg
ZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfZ2VtLmMgPDx2bXdfZ2VtX3ZtYXA+Pg0KPiA+
ICAgICAgICAgICAgICByZXQgPSBkbWFfYnVmX3ZtYXAob2JqLT5pbXBvcnRfYXR0YWNoLT5kbWFi
dWYsIG1hcCk7DQo+ID4NCj4gVGhhbmsgeW91IGZvciBjbGFyaWZpY2F0aW9uLiBUaGF0IHdvdWxk
IGJlIGdvb2QgdG8gcmVmbGVjdCBpdCBpbiB0aGUNCj4gY29tbWl0IG1lc3NhZ2UuIEFsc28sIHBs
ZWFzZSBub3RlIHRoYXQ6DQoNClN1cmUuDQoNCj4NCj4gPiAgICAgICBpZiAoIUlTX0VOQUJMRUQo
Q09ORklHX0hBVkVfQVJDSF9IVUdFX1ZNQUxMT0MpIHx8DQo+ID4gLSAgICAgICAgICAgICAgICAg
ICAgIHBhZ2Vfc2hpZnQgPT0gUEFHRV9TSElGVCkNCj4gPiArICAgICAgICAgICAgICAgICAgICAg
KHBhZ2Vfc2hpZnQgPT0gUEFHRV9TSElGVCAmJiAhUGFnZUNvbXBvdW5kKHBhZ2VzWzBdKSkpDQo+
ID4NCj4gd2UgcmVseSBvbiBwYWdlX3NoaWZ0ID09IFBBR0VfU0hJRlQgY29uZGl0aW9uIGZvciB0
aGUgbm9uLXNsZWVwIHZtYWxsb2MoKQ0KPiBhbGxvY2F0aW9ucyhHRlBfQVRPTUlDLCBHRlBfTk9X
QUlUKSwgc28gd2UgZ28gdmlhIHZtYXBfc21hbGxfcGFnZXNfcmFuZ2Vfbm9mbHVzaCgpDQo+IHBh
dGguIFlvdXIgcGF0Y2ggYWRkcyAhUGFnZUNvbXBvdW5kKHBhZ2VzWzBdKSBhbHNvLiBJdCBpcyBu
b3QgYSBwcm9ibGVtDQo+IHNpbmNlIGl0IGlzIHZtYXAoKSBwYXRoIGJ1dCB3ZSBuZWVkIHRvIGNv
bW1lbnQgdGhhdC4NCg0KU3VyZS4gV291bGQgdGhlIGZvbGxvd2luZyB3b3JrPw0KDQogICAgICAg
IC8qDQogICAgICAgICAqIEZvciB2bWFwKCksIHVzZXJzIG1heSBhbGxvY2F0ZSBwYWdlcyBmcm9t
IGhpZ2ggb3JkZXJzIGRvd24NCnRvIG9yZGVyIDAsDQogICAgICAgICAqIHdoaWxlIGFsd2F5cyB1
c2luZyBQQUdFX1NISUZUIGFzIHRoZSBwYWdlX3NoaWZ0Lg0KICAgICAgICAgKiBXZSBmaXJzdCBj
aGVjayB3aGV0aGVyIHRoZSBpbml0aWFsIHBhZ2UgaXMgYSBjb21wb3VuZCBwYWdlLiBJZiBzbywN
CiAgICAgICAgICogdGhlcmUgbWF5IGJlIGFuIG9wcG9ydHVuaXR5IHRvIGJhdGNoIG11bHRpcGxl
IHBhZ2VzIHRvZ2V0aGVyLg0KICAgICAgICAgKi8NCiAgICAgICAgaWYgKCFJU19FTkFCTEVEKENP
TkZJR19IQVZFX0FSQ0hfSFVHRV9WTUFMTE9DKSB8fA0KICAgICAgICAgICAgICAgICAgICAgICAg
KHBhZ2Vfc2hpZnQgPT0gUEFHRV9TSElGVCAmJiAhUGFnZUNvbXBvdW5kKHBhZ2VzWzBdKSkpDQog
ICAgICAgICAgICAgICAgcmV0dXJuIHZtYXBfc21hbGxfcGFnZXNfcmFuZ2Vfbm9mbHVzaChhZGRy
LCBlbmQsIHByb3QsIHBhZ2VzKTsNCg0KVGhhbmtzDQpCYXJyeQ0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
