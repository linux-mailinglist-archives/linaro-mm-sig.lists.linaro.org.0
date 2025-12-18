Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EGWFlYK4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:12:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E60984116CA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:12:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0420404F0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:12:04 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	by lists.linaro.org (Postfix) with ESMTPS id 36DD940099
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 21:24:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=loAE1R4P;
	spf=pass (lists.linaro.org: domain of 21cnbao@gmail.com designates 209.85.210.180 as permitted sender) smtp.mailfrom=21cnbao@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7b8bbf16b71so1169447b3a.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 13:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766093086; x=1766697886; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YTohBmtIORr8n8lsBagnrEz6IPI4sdKvMwJT/pJENjY=;
        b=loAE1R4PhwF2lBdGZGVNaN9A3+jlA5/xNuze5y0QeArnTfOixwk2qCcWrlavLPN2a1
         SeZM3SR6gaHdpuc+HoQUbB9ZWmYIhXVb2ADvx0Eu+aa7UU0n4JWBFX0mZq0c3uCsXPqa
         Y/87QDAg8cxVoEkS1To9RAWQc6GDzbygkFJXUOZ1xoeSoChqa5lwdVTiZiB4QqxIm1ru
         xfqt8B7AAbE9cDmNp9cj/JIZB8vwt81+hnbYHoWaCvMQYfKr2vJGbKRpQFldIPMr2MeK
         EZ5kz8n/mfeHOhlJJtlP7FZUe4DcLXlEjXymTJURtm32kQyqGBZIJIleQTG0nabsuaSc
         oTUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766093086; x=1766697886;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YTohBmtIORr8n8lsBagnrEz6IPI4sdKvMwJT/pJENjY=;
        b=xOJiZCIiVeMaWhCSlbP8mOP68Kyq9ULmx3jGced0RqN/C//1QLqaOyadO2Rq8ftU4W
         DQnmd3x0Y8wo0WymN7p+5GKRRoYavbK3pxb6u26iIIwcd2KMmtPozxkhR+UJd8lOtkVV
         zFrww5xdVUjaqOYkQQzbQslsVnB2wzKfpnrUrVpLV3E192VBnT/I/ExuF36pARNcMrhj
         UibmBYcXMqKaJyi0XMGjuUfrKHwkeQjoNC9g8xSDyqCFP9fP20mHZbHtXrwp9LKVORQ4
         R0HPfHheuYJrWZfN1251mqZowUn6t0AvLx9bkWiNJOFuN8YDGItUpnIUWM2ztLqM/1dm
         XU4w==
X-Forwarded-Encrypted: i=1; AJvYcCVfdBt4hnXiUW8XX3lYgWgCEgFEBMc/8A1ELdbHQCEdFFfqtPm7CO9gcMkXLtbWnqGGF9KCKAazHclbbpPf@lists.linaro.org
X-Gm-Message-State: AOJu0Ywzp9JyGdfkQVM0OUbl3G45pFsibsthgpnk2BMOZuxzkRyoNqfo
	lkpbXxBXibu/EOZ1YZxcd5pcCjo0H5sMpY4VczwAHoCpsjcVdpg+sqdi
X-Gm-Gg: AY/fxX67CAR9UsU5/Rjt50smBAtRT9Zc+p61fcRJQtpLh29jAs8LC6vWBrECUHaGPGo
	h8wMjUUGzPhfbfQ6pa8WXQwVRqBmbUXxc5vNrnnrykLwgGDFCfbUK+KcLjgrMDpX0y5ehO6yEQV
	bybT7YT5TuGWFyNLs5k/3g4kxSFSjSCM12ttJY1beWXMBbBFfXOHjq/vxkdAISjv5Ay6KMwYC8q
	fqfrhCxbxHG2gwUYE2d5FzT2a37DtJ4zg/a4Dy6NDTTOX9fj8mudsOrZQsvhIg11lMlwkYrpfVQ
	S+u7ieTCd4p28T5KXz9+7i6xROaMryT3U5TbuPSwkIVZ/tBkxPfeGSXj/vgro89thFqIz8ijJQ5
	N2JYv3FJGaLc4o2ldn94+J+DSCI/x0sjfP1XKeYLSCUQeNRZVGJWD/3hclex5UmjZ6Wi2NB2k24
	4NlaSDJxBSHHbmzk/ToLI85Yv5
X-Google-Smtp-Source: AGHT+IGdOHVdrcCuEhBbazWVZdWwuUQF6Z6rcTSGphDUl2qn81RLeTCX0R1hfWncTkyQFdQxgYXjUA==
X-Received: by 2002:a05:6a00:808c:b0:7e8:450c:61b5 with SMTP id d2e1a72fcca58-7ff6607b7e7mr687761b3a.37.1766093086042;
        Thu, 18 Dec 2025 13:24:46 -0800 (PST)
Received: from Barrys-MBP.hub ([47.72.129.29])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7a939ea2sm258519b3a.4.2025.12.18.13.24.40
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 18 Dec 2025 13:24:45 -0800 (PST)
From: Barry Song <21cnbao@gmail.com>
To: urezki@gmail.com
Date: Fri, 19 Dec 2025 05:24:36 +0800
Message-Id: <20251218212436.17142-1-21cnbao@gmail.com>
X-Mailer: git-send-email 2.39.3 (Apple Git-146)
In-Reply-To: <aUQHss6K8b_esvpw@milan>
References: <aUQHss6K8b_esvpw@milan>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: 21cnbao@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: P7DPHLOJZVXMEJRNYFDUGEDWQ2WDVEBU
X-Message-ID-Hash: P7DPHLOJZVXMEJRNYFDUGEDWQ2WDVEBU
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:02 +0000
CC: 21cnbao@gmail.com, akpm@linux-foundation.org, david@kernel.org, dri-devel@lists.freedesktop.org, jstultz@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, mripard@kernel.org, sumit.semwal@linaro.org, v-songbaohua@oppo.com, zhengtangquan@oppo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] mm/vmalloc: map contiguous pages in batches for vmap() whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P7DPHLOJZVXMEJRNYFDUGEDWQ2WDVEBU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[2850];
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
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.358];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[21cnbao@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,linux-foundation.org,kernel.org,lists.freedesktop.org,google.com,lists.linaro.org,vger.kernel.org,kvack.org,linaro.org,oppo.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oppo.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: E60984116CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCBEZWMgMTgsIDIwMjUgYXQgOTo1NeKAr1BNIFVsYWR6aXNsYXUgUmV6a2kgPHVyZXpr
aUBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBPbiBUaHUsIERlYyAxOCwgMjAyNSBhdCAwMjowMTo1
NlBNICswMTAwLCBEYXZpZCBIaWxkZW5icmFuZCAoUmVkIEhhdCkgd3JvdGU6DQo+ID4gT24gMTIv
MTUvMjUgMDY6MzAsIEJhcnJ5IFNvbmcgd3JvdGU6DQo+ID4gPiBGcm9tOiBCYXJyeSBTb25nIDx2
LXNvbmdiYW9odWFAb3Bwby5jb20+DQo+ID4gPg0KPiA+ID4gSW4gbWFueSBjYXNlcywgdGhlIHBh
Z2VzIHBhc3NlZCB0byB2bWFwKCkgbWF5IGluY2x1ZGUgaGlnaC1vcmRlcg0KPiA+ID4gcGFnZXMg
YWxsb2NhdGVkIHdpdGggX19HRlBfQ09NUCBmbGFncy4gRm9yIGV4YW1wbGUsIHRoZSBzeXN0ZW1o
ZWFwDQo+ID4gPiBvZnRlbiBhbGxvY2F0ZXMgcGFnZXMgaW4gZGVzY2VuZGluZyBvcmRlcjogb3Jk
ZXIgOCwgdGhlbiA0LCB0aGVuIDAuDQo+ID4gPiBDdXJyZW50bHksIHZtYXAoKSBpdGVyYXRlcyBv
dmVyIGV2ZXJ5IHBhZ2UgaW5kaXZpZHVhbGx54oCUZXZlbiBwYWdlcw0KPiA+ID4gaW5zaWRlIGEg
aGlnaC1vcmRlciBibG9jayBhcmUgaGFuZGxlZCBvbmUgYnkgb25lLg0KPiA+ID4NCj4gPiA+IFRo
aXMgcGF0Y2ggZGV0ZWN0cyBoaWdoLW9yZGVyIHBhZ2VzIGFuZCBtYXBzIHRoZW0gYXMgYSBzaW5n
bGUNCj4gPiA+IGNvbnRpZ3VvdXMgYmxvY2sgd2hlbmV2ZXIgcG9zc2libGUuDQo+ID4gPg0KPiA+
ID4gQW4gYWx0ZXJuYXRpdmUgd291bGQgYmUgdG8gaW1wbGVtZW50IGEgbmV3IEFQSSwgdm1hcF9z
ZygpLCBidXQgdGhhdA0KPiA+ID4gY2hhbmdlIHNlZW1zIHRvIGJlIGxhcmdlIGluIHNjb3BlLg0K
PiA+ID4NCj4gPiA+IFdoZW4gdm1hcHBpbmcgYSAxMjhNQiBkbWEtYnVmIHVzaW5nIHRoZSBzeXN0
ZW1oZWFwLCB0aGlzIHBhdGNoDQo+ID4gPiBtYWtlcyBzeXN0ZW1faGVhcF9kb192bWFwKCkgcm91
Z2hseSAxN8OXIGZhc3Rlci4NCj4gPiA+DQo+ID4gPiBXLyBwYXRjaDoNCj4gPiA+IFsgwqAgMTAu
NDA0NzY5XSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgMjQ5NDAwMCBucw0KPiA+ID4gWyDCoCAx
Mi41MjU5MjFdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayAyNDY3MDA4IG5zDQo+ID4gPiBbIMKg
IDE0LjUxNzM0OF0gc3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDI0NzEwMDggbnMNCj4gPiA+IFsg
wqAgMTYuNTkzNDA2XSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgMjQ0NDAwMCBucw0KPiA+ID4g
WyDCoCAxOS41MDEzNDFdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayAyNDg5MDA4IG5zDQo+ID4g
Pg0KPiA+ID4gVy9vIHBhdGNoOg0KPiA+ID4gWyDCoCDCoDcuNDEzNzU2XSBzeXN0ZW1faGVhcF9k
b192bWFwIHRvb2sgNDI2MjYwMDAgbnMNCj4gPiA+IFsgwqAgwqA5LjQyNTYxMF0gc3lzdGVtX2hl
YXBfZG9fdm1hcCB0b29rIDQyNTAwOTkyIG5zDQo+ID4gPiBbIMKgIDExLjgxMDg5OF0gc3lzdGVt
X2hlYXBfZG9fdm1hcCB0b29rIDQyMjE1MDA4IG5zDQo+ID4gPiBbIMKgIDE0LjMzNjc5MF0gc3lz
dGVtX2hlYXBfZG9fdm1hcCB0b29rIDQyMTM0OTkyIG5zDQo+ID4gPiBbIMKgIDE2LjM3Mzg5MF0g
c3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDQyNzUwMDAwIG5zDQo+ID4gPg0KPiA+DQo+ID4gVGhh
dCdzIHF1aXRlIGEgc3BlZWR1cC4NCj4gPg0KPiA+ID4gQ2M6IERhdmlkIEhpbGRlbmJyYW5kIDxk
YXZpZEBrZXJuZWwub3JnPg0KPiA+ID4gQ2M6IFVsYWR6aXNsYXUgUmV6a2kgPHVyZXpraUBnbWFp
bC5jb20+DQo+ID4gPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4N
Cj4gPiA+IENjOiBKb2huIFN0dWx0eiA8anN0dWx0ekBnb29nbGUuY29tPg0KPiA+ID4gQ2M6IE1h
eGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCj4gPiA+IFRlc3RlZC1ieTogVGFuZ3F1
YW4gWmhlbmcgPHpoZW5ndGFuZ3F1YW5Ab3Bwby5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBC
YXJyeSBTb25nIDx2LXNvbmdiYW9odWFAb3Bwby5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgICog
ZGlmZiB3aXRoIHJmYzoNCj4gPiA+IMKgIE1hbnkgY29kZSByZWZpbmVtZW50cyBiYXNlZCBvbiBE
YXZpZCdzIHN1Z2dlc3Rpb25zLCB0aGFua3MhDQo+ID4gPiDCoCBSZWZpbmUgY29tbWVudCBhbmQg
Y2hhbmdlbG9nIGFjY29yZGluZyB0byBVbGFkemlzbGF1LCB0aGFua3MhDQo+ID4gPiDCoCByZmMg
bGluazoNCj4gPiA+IMKgIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1tLzIwMjUxMTIy
MDkwMzQzLjgxMjQzLTEtMjFjbmJhb0BnbWFpbC5jb20vDQo+ID4gPg0KPiA+ID4gwqAgbW0vdm1h
bGxvYy5jIHwgNDUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0t
DQo+ID4gPiDCoCAxIGZpbGUgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMo
LSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvbW0vdm1hbGxvYy5jIGIvbW0vdm1hbGxvYy5j
DQo+ID4gPiBpbmRleCA0MWRkMDFlODQzMGMuLjhkNTc3NzY3YTllNSAxMDA2NDQNCj4gPiA+IC0t
LSBhL21tL3ZtYWxsb2MuYw0KPiA+ID4gKysrIGIvbW0vdm1hbGxvYy5jDQo+ID4gPiBAQCAtNjQy
LDYgKzY0MiwyOSBAQCBzdGF0aWMgaW50IHZtYXBfc21hbGxfcGFnZXNfcmFuZ2Vfbm9mbHVzaCh1
bnNpZ25lZCBsb25nIGFkZHIsIHVuc2lnbmVkIGxvbmcgZW5kLA0KPiA+ID4gwqAgwqAgcmV0dXJu
IGVycjsNCj4gPiA+IMKgIH0NCj4gPiA+ICtzdGF0aWMgaW5saW5lIGludCBnZXRfdm1hcF9iYXRj
aF9vcmRlcihzdHJ1Y3QgcGFnZSAqKnBhZ2VzLA0KPiA+ID4gKyDCoCDCoCDCoCDCoCDCoCB1bnNp
Z25lZCBpbnQgc3RyaWRlLCB1bnNpZ25lZCBpbnQgbWF4X3N0ZXBzLCB1bnNpZ25lZCBpbnQgaWR4
KQ0KPiA+ID4gK3sNCj4gPiA+ICsgwqAgaW50IG5yX3BhZ2VzID0gMTsNCj4gPg0KPiA+IHVuc2ln
bmVkIGludCwgbWF5YmUNCg0KUmlnaHQNCg0KPiA+DQo+ID4gV2h5IGFyZSB5b3UgaW5pdGlhbGl6
aW5nIG5yX3BhZ2VzIHdoZW4geW91IG92ZXJ3cml0ZSBpdCBiZWxvdz8NCg0KUmlnaHQsIGluaXRp
YWxpemluZyBucl9wYWdlcyBjYW4gYmUgZHJvcHBlZC4NCg0KPiA+DQo+ID4gPiArDQo+ID4gPiAr
IMKgIC8qDQo+ID4gPiArIMKgIMKgKiBDdXJyZW50bHksIGJhdGNoaW5nIGlzIG9ubHkgc3VwcG9y
dGVkIGluIHZtYXBfcGFnZXNfcmFuZ2UNCj4gPiA+ICsgwqAgwqAqIHdoZW4gcGFnZV9zaGlmdCA9
PSBQQUdFX1NISUZULg0KPiA+DQo+ID4gSSBkb24ndCBrbm93IHRoZSBjb2RlIHNvIHJlYWxpemlu
ZyBob3cgd2UgZ28gZnJvbSBwYWdlX3NoaWZ0IHRvIHN0cmlkZSB0b28NCj4gPiBtZSBhIHNlY29u
ZC4gTWF5YmUgb25seSB0YWxrIGFib3V0IHN0cmlkZSBoZXJlPw0KPiA+DQo+ID4gT1RPSCwgaXMg
InN0cmlkZSIgcmVhbGx5IHRoZSByaWdodCB0ZXJtaW5vbG9neT8NCj4gPg0KPiA+IHdlIGNhbGN1
bGF0ZSBpdCBhcw0KPiA+DQo+ID4gwqAgwqAgwqAgc3RyaWRlID0gMVUgPDwgKHBhZ2Vfc2hpZnQg
LSBQQUdFX1NISUZUKTsNCj4gPg0KPiA+IHBhZ2Vfc2hpZnQgLSBQQUdFX1NISUZUIHNob3VsZCBn
aXZlIHVzIGFuICJvcmRlciIuIFNvIGlzIHRoaXMgYQ0KPiA+ICJncmFudWxhcml0eSIgaW4gbnJf
cGFnZXM/DQoNClRoaXMgaXMgdGhlIGNhc2Ugd2hlcmUgdm1hbGxvYygpIG1heSByZWFsaXplIHRo
YXQgaXQgaGFzDQpoaWdoLW9yZGVyIHBhZ2VzIGFuZCB0aGVyZWZvcmUgY2FsbHMNCnZtYXBfcGFn
ZXNfcmFuZ2Vfbm9mbHVzaCgpIHdpdGggYSBwYWdlX3NoaWZ0IGxhcmdlciB0aGFuDQpQQUdFX1NI
SUZULiBGb3Igdm1hcCgpLCB3ZSB0YWtlIGEgcGFnZXMgYXJyYXksIHNvDQpwYWdlX3NoaWZ0IGlz
IGFsd2F5cyBQQUdFX1NISUZULg0KDQo+ID4NCj4gPiBBZ2FpbiwgSSBkb24ndCBrbm93IHRoaXMg
Y29kZSwgc28gc29ycnkgZm9yIHRoZSBxdWVzdGlvbi4NCj4gPg0KPiBUbyBtZSAic3RyaWRlIiBh
bHNvIHNvdW5kcyB1bmNsZWFyLg0KDQpUaGFua3MsIERhdmlkIGFuZCBVbGFkemlzbGF1LiBPbiBz
ZWNvbmQgdGhvdWdodCwgdGhpcyBzdHJpZGUgbWF5IGJlDQpyZWR1bmRhbnQsIGFuZCBpdCBzaG91
bGQgYmUgcG9zc2libGUgdG8gZHJvcCBpdCBlbnRpcmVseS4gVGhpcyByZXN1bHRzDQppbiB0aGUg
Y29kZSBiZWxvdzoNCg0KZGlmZiAtLWdpdCBhL21tL3ZtYWxsb2MuYyBiL21tL3ZtYWxsb2MuYw0K
aW5kZXggNDFkZDAxZTg0MzBjLi4zOTYyYmRjYjQzZTUgMTAwNjQ0DQotLS0gYS9tbS92bWFsbG9j
LmMNCisrKyBiL21tL3ZtYWxsb2MuYw0KQEAgLTY0Miw2ICs2NDIsMjAgQEAgc3RhdGljIGludCB2
bWFwX3NtYWxsX3BhZ2VzX3JhbmdlX25vZmx1c2godW5zaWduZWQgbG9uZyBhZGRyLCB1bnNpZ25l
ZCBsb25nIGVuZCwNCiAJcmV0dXJuIGVycjsNCiB9DQogDQorc3RhdGljIGlubGluZSBpbnQgZ2V0
X3ZtYXBfYmF0Y2hfb3JkZXIoc3RydWN0IHBhZ2UgKipwYWdlcywNCisJCXVuc2lnbmVkIGludCBt
YXhfc3RlcHMsIHVuc2lnbmVkIGludCBpZHgpDQorew0KKwl1bnNpZ25lZCBpbnQgbnJfcGFnZXMJ
ID0gY29tcG91bmRfbnIocGFnZXNbaWR4XSk7DQorDQorCWlmIChucl9wYWdlcyA9PSAxIHx8IG1h
eF9zdGVwcyA8IG5yX3BhZ2VzKQ0KKwkJcmV0dXJuIDA7DQorDQorCWlmIChudW1fcGFnZXNfY29u
dGlndW91cygmcGFnZXNbaWR4XSwgbnJfcGFnZXMpID09IG5yX3BhZ2VzKQ0KKwkJcmV0dXJuIGNv
bXBvdW5kX29yZGVyKHBhZ2VzW2lkeF0pOw0KKwlyZXR1cm4gMDsNCit9DQorDQogLyoNCiAgKiB2
bWFwX3BhZ2VzX3JhbmdlX25vZmx1c2ggaXMgc2ltaWxhciB0byB2bWFwX3BhZ2VzX3JhbmdlLCBi
dXQgZG9lcyBub3QNCiAgKiBmbHVzaCBjYWNoZXMuDQpAQCAtNjU4LDIwICs2NzIsMzUgQEAgaW50
IF9fdm1hcF9wYWdlc19yYW5nZV9ub2ZsdXNoKHVuc2lnbmVkIGxvbmcgYWRkciwgdW5zaWduZWQg
bG9uZyBlbmQsDQogDQogCVdBUk5fT04ocGFnZV9zaGlmdCA8IFBBR0VfU0hJRlQpOw0KIA0KKwkv
Kg0KKwkgKiBGb3Igdm1hcCgpLCB1c2VycyBtYXkgYWxsb2NhdGUgcGFnZXMgZnJvbSBoaWdoIG9y
ZGVycyBkb3duIHRvDQorCSAqIG9yZGVyIDAsIHdoaWxlIGFsd2F5cyB1c2luZyBQQUdFX1NISUZU
IGFzIHRoZSBwYWdlX3NoaWZ0Lg0KKwkgKiBXZSBmaXJzdCBjaGVjayB3aGV0aGVyIHRoZSBpbml0
aWFsIHBhZ2UgaXMgYSBjb21wb3VuZCBwYWdlLiBJZiBzbywNCisJICogdGhlcmUgbWF5IGJlIGFu
IG9wcG9ydHVuaXR5IHRvIGJhdGNoIG11bHRpcGxlIHBhZ2VzIHRvZ2V0aGVyLg0KKwkgKi8NCiAJ
aWYgKCFJU19FTkFCTEVEKENPTkZJR19IQVZFX0FSQ0hfSFVHRV9WTUFMTE9DKSB8fA0KLQkJCXBh
Z2Vfc2hpZnQgPT0gUEFHRV9TSElGVCkNCisJCQkocGFnZV9zaGlmdCA9PSBQQUdFX1NISUZUICYm
ICFQYWdlQ29tcG91bmQocGFnZXNbMF0pKSkNCiAJCXJldHVybiB2bWFwX3NtYWxsX3BhZ2VzX3Jh
bmdlX25vZmx1c2goYWRkciwgZW5kLCBwcm90LCBwYWdlcyk7DQogDQotCWZvciAoaSA9IDA7IGkg
PCBucjsgaSArPSAxVSA8PCAocGFnZV9zaGlmdCAtIFBBR0VfU0hJRlQpKSB7DQorCWZvciAoaSA9
IDA7IGkgPCBucjsgKSB7DQorCQl1bnNpZ25lZCBpbnQgc2hpZnQgPSBwYWdlX3NoaWZ0Ow0KIAkJ
aW50IGVycjsNCiANCi0JCWVyciA9IHZtYXBfcmFuZ2Vfbm9mbHVzaChhZGRyLCBhZGRyICsgKDFV
TCA8PCBwYWdlX3NoaWZ0KSwNCisJCS8qDQorCQkgKiBGb3Igdm1hcCgpIGNhc2VzLCBwYWdlX3No
aWZ0IGlzIGFsd2F5cyBQQUdFX1NISUZULCBldmVuDQorCQkgKiBpZiB0aGUgcGFnZXMgYXJlIHBo
eXNpY2FsbHkgY29udGlndW91cywgdGhleSBtYXkgc3RpbGwNCisJCSAqIGJlIG1hcHBlZCBpbiBh
IGJhdGNoLg0KKwkJICovDQorCQlpZiAocGFnZV9zaGlmdCA9PSBQQUdFX1NISUZUKQ0KKwkJCXNo
aWZ0ICs9IGdldF92bWFwX2JhdGNoX29yZGVyKHBhZ2VzLCBuciAtIGksIGkpOw0KKwkJZXJyID0g
dm1hcF9yYW5nZV9ub2ZsdXNoKGFkZHIsIGFkZHIgKyAoMVVMIDw8IHNoaWZ0KSwNCiAJCQkJCXBh
Z2VfdG9fcGh5cyhwYWdlc1tpXSksIHByb3QsDQotCQkJCQlwYWdlX3NoaWZ0KTsNCisJCQkJCXNo
aWZ0KTsNCiAJCWlmIChlcnIpDQogCQkJcmV0dXJuIGVycjsNCiANCi0JCWFkZHIgKz0gMVVMIDw8
IHBhZ2Vfc2hpZnQ7DQorCQlhZGRyICs9IDFVTCAgPDwgc2hpZnQ7DQorCQlpICs9IDFVIDw8IHNo
aWZ0Ow0KIAl9DQogDQogCXJldHVybiAwOw0KDQpEb2VzIHRoaXMgbG9vayBjbGVhcmVyPw0KDQpU
aGFua3MNCkJhcnJ5DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
