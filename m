Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mO1nF+8B4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:36:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E46410F81
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:36:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D74A41263
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:36:14 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by lists.linaro.org (Postfix) with ESMTPS id 9439F3F719
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Dec 2025 21:39:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="GdbrI/2I";
	spf=pass (lists.linaro.org: domain of 21cnbao@gmail.com designates 209.85.222.181 as permitted sender) smtp.mailfrom=21cnbao@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-8b2ec756de0so443167685a.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Dec 2025 13:39:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764625166; x=1765229966; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ya5FXlt3fgfn2bY5272+Q5pv7MOagNgU6+eVeVRebso=;
        b=GdbrI/2IrQAVnjw8NFtQOUT6c0xXyCx/yPDLEYM6F4OEtvqbO2Diaq50w/oidffMVf
         v/5J604Bzcd2uON+psNYniPnHx62iChIJKxay2+3y2bdBCjrSWnE3Q0Nh5IN1caHWI5x
         E3VXMm2ck85k5BUhvXvEPsDulYWqVTyiRKCdVcXHgTkbmv3qEi9hmduAmm9fvKTmGYg5
         58quYQVQNnomZMcYR5rqNvX67mzqHsT30mlualGTuqPVLReRetZg8rTCWfOwR1onck7x
         JSlaxAuiDfFWW2vjlXOEttvQH0SJAyOZdlD1ZE3lNwaNMdw0FRjSkhcA3kzPgSJYj2Er
         C+8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764625166; x=1765229966;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ya5FXlt3fgfn2bY5272+Q5pv7MOagNgU6+eVeVRebso=;
        b=JSQawlZKl4pfWMvcFH3BYg1lBStrtC062YQMRHErRMfnQ5KopXAQ8ZtO8uPgQtGagL
         2V9u/GYY/eoefv4K9Ub68xu/lY+OBlFdYsVICZN049Xrbj3I3IqCzZhkygP8aVAHGi+w
         4PceCdSgBhxTMcVgFG8outUXtybTIiL+oS9QmI8Qk7B5pDnQmbRYIvqNiGhe/f0TeoKF
         s3H80b0MAjJrVuojEkCajcpogU2Gkhs+tPeAlW4pbDHZorD1shDwwkYFXfo0fAr+aTma
         KboHxX7U5KS7DpYtySbQ6HrHg5KbKLlgDwl9jfWJ2X/fJnaeKhWubbef0IYLza8z4tqr
         dPfQ==
X-Forwarded-Encrypted: i=1; AJvYcCVybcHzMmhnrmtdRzN8389c8SOAV+ZPTg88YzmOzp+z7OBudqaY3hrqhWi78Go3h0GJmCp3KIn6hGpAYtkt@lists.linaro.org
X-Gm-Message-State: AOJu0Yy3rBFXSbHL+S2Lg1CzdH2dO19bPhiwHHBplptDhAOvCHg0W+1K
	5n/CBW5y0yb9MnPJfexr0svniRWdsLNokgBFoW/kM4f4APbf8j94tASbg+VP5F7QWJsUsDbXHic
	0EYKOFFRXWPUm9wXnTmVhZBSrQC8/g8s=
X-Gm-Gg: ASbGncufLOvEui2mqEro6LvDZNpfczACGyupGnOAWr+VHfvjVFy6KStz0px/UwZeuLo
	ViahqWiOPoQMO36mHGGPq1uUptRjQ80nnjQhSp3WSHBrzj00cV+i+QPHo0rPIrqG58pe4YAaKGb
	sfHHKzn/jZ9HhP9NL635pccovI2SdBx94P7hhT/XF/tPvKb9zHZzpOQ/f/dG833+jms8o2261Q0
	QGj7sTtpOxdmFQFj1oEEx/4OHdUSVvU2Zdh8UhYCIfj3RdpKsMBm3CHLuYxPKlWqmmIjw==
X-Google-Smtp-Source: AGHT+IFDJ6lg5MxUSmUVun4F/Tz+fV/DaTriGHNCnPcATTgtDfNsilRg6+Hi6qXUw8UE/oCfbowoPuItAeaNKnkxOOI=
X-Received: by 2002:a05:620a:2907:b0:857:890f:7fab with SMTP id
 af79cd13be357-8b4ebdce57dmr3735537485a.85.1764625165847; Mon, 01 Dec 2025
 13:39:25 -0800 (PST)
MIME-Version: 1.0
References: <20251122090343.81243-1-21cnbao@gmail.com> <ed7701d7-28c8-4760-9ccb-f22fc1e9528e@kernel.org>
In-Reply-To: <ed7701d7-28c8-4760-9ccb-f22fc1e9528e@kernel.org>
From: Barry Song <21cnbao@gmail.com>
Date: Tue, 2 Dec 2025 05:39:14 +0800
X-Gm-Features: AWmQ_bkntYc9RqDd7viHZ4oh-bPL-P8xMulAYuAEyBuveMg92U8PVcocpttZ0iw
Message-ID: <CAGsJ_4zwXiwvHYvX6pBsyWLi-LXQcTDzR=e+hQ_4YOLd5BhCOA@mail.gmail.com>
To: "David Hildenbrand (Red Hat)" <david@kernel.org>
X-Spamd-Bar: ----
X-MailFrom: 21cnbao@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L2M7XLSW3OCQ5JZFOXADSCQFWDBMRFI2
X-Message-ID-Hash: L2M7XLSW3OCQ5JZFOXADSCQFWDBMRFI2
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:08 +0000
CC: akpm@linux-foundation.org, linux-mm@kvack.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Barry Song <v-songbaohua@oppo.com>, Uladzislau Rezki <urezki@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, John Stultz <jstultz@google.com>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC] mm/vmap: map contiguous pages in batches whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L2M7XLSW3OCQ5JZFOXADSCQFWDBMRFI2/>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[21cnbao@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux-foundation.org,kvack.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,oppo.com,gmail.com,linaro.org,google.com,kernel.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.266];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 18E46410F81
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBEZWMgMSwgMjAyNSBhdCA2OjM24oCvUE0gRGF2aWQgSGlsZGVuYnJhbmQgKFJlZCBI
YXQpDQo8ZGF2aWRAa2VybmVsLm9yZz4gd3JvdGU6DQpbLi4uXQ0KPiA+DQo+ID4gZGlmZiAtLWdp
dCBhL21tL3ZtYWxsb2MuYyBiL21tL3ZtYWxsb2MuYw0KPiA+IGluZGV4IDA4MzJmOTQ0NTQ0Yy4u
YWYyZTNlOGMwNTJhIDEwMDY0NA0KPiA+IC0tLSBhL21tL3ZtYWxsb2MuYw0KPiA+ICsrKyBiL21t
L3ZtYWxsb2MuYw0KPiA+IEBAIC02NDIsNiArNjQyLDM0IEBAIHN0YXRpYyBpbnQgdm1hcF9zbWFs
bF9wYWdlc19yYW5nZV9ub2ZsdXNoKHVuc2lnbmVkIGxvbmcgYWRkciwgdW5zaWduZWQgbG9uZyBl
bmQsDQo+ID4gICAgICAgcmV0dXJuIGVycjsNCj4gPiAgIH0NCj4gPg0KPiA+ICtzdGF0aWMgaW5s
aW5lIGludCBnZXRfdm1hcF9iYXRjaF9vcmRlcihzdHJ1Y3QgcGFnZSAqKnBhZ2VzLA0KPiA+ICsg
ICAgICAgICAgICAgdW5zaWduZWQgaW50IHN0cmlkZSwNCj4gPiArICAgICAgICAgICAgIGludCBt
YXhfc3RlcHMsDQo+ID4gKyAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgaWR4KQ0KPg0KPiBUaGVz
ZSBmaXQgaW50byBsZXNzIGxpbmVzLg0KPg0KPiBpZGVhbGx5DQo+DQo+IFx0XHR1bnNpZ25lZCBp
bnQgc3RyaWRlLCBpbnQgbWF4X3N0ZXBzLCB1bnNpZ25lZCBpbnQgaWR4KQ0KDQpSaWdodCwgdGhh
bmtzIQ0KDQo+DQo+ID4gK3sNCj4NCj4gaW50IG9yZGVyLCBucl9wYWdlcywgaTsNCj4gc3RydWN0
IHBhZ2UgKmJhc2U7DQo+DQo+IEJ1dCBJIHRoaW5rIHlvdSBjYW4ganVzdCBkcm9wICJiYXNlIi4g
QW5kIG9yZGVyLg0KDQpSaWdodCwgdGhhbmtzIQ0KDQo+DQo+ID4gKyAgICAgLyoNCj4gPiArICAg
ICAgKiBDdXJyZW50bHksIGJhdGNoaW5nIGlzIG9ubHkgc3VwcG9ydGVkIGluIHZtYXBfcGFnZXNf
cmFuZ2UNCj4gPiArICAgICAgKiB3aGVuIHBhZ2Vfc2hpZnQgPT0gUEFHRV9TSElGVC4NCj4gPiAr
ICAgICAgKi8NCj4gPiArICAgICBpZiAoc3RyaWRlICE9IDEpDQo+ID4gKyAgICAgICAgICAgICBy
ZXR1cm4gMDsNCj4gPiArDQo+ID4gKyAgICAgc3RydWN0IHBhZ2UgKmJhc2UgPSBwYWdlc1tpZHhd
Ow0KPiA+ICsgICAgIGlmICghUGFnZUhlYWQoYmFzZSkpDQo+ID4gKyAgICAgICAgICAgICByZXR1
cm4gMDsNCj4gPiArDQo+ID4gKyAgICAgaW50IG9yZGVyID0gY29tcG91bmRfb3JkZXIoYmFzZSk7
DQo+ID4gKyAgICAgaW50IG5yX3BhZ2VzID0gMSA8PCBvcmRlcjsNCj4NCj4NCj4gWW91IGNhbiBk
cm9wIHRoZSBoZWFkIGNoZWNrIGV0YyBhbmQgc2ltcGx5IGRvDQo+DQo+IG5yX3BhZ2VzID0gY29t
cG91bmRfbnIocGFnZXNbaWR4XSk7DQo+IGlmIChucl9wYWdlcyA9PSAxKQ0KPiAgICAgICAgIHJl
dHVybiAwOw0KPg0KDQpOaWNlLiBTaW5jZSBjb21wb3VuZF9ucigpIHJldHVybnMgMSBmb3IgdGFp
bCBwYWdlcy4NCg0KPiBXaGljaCByYWlzZXMgdGhlIHF1ZXN0aW9uOiBhcmUgdGhlc2UgdGhpbmdz
IGZvbGlvcz8gSSBhc3N1bWUgbm90Lg0KDQpJbiBteSBjYXNlLCBpdOKAmXMgc2ltcGx5IGFsbG9j
X3BhZ2VzIHdpdGggR0ZQX0NPTVAuIEkgYXNzdW1lIHRoYXQgZm9saW9zDQphbGxvY2F0ZWQgdmlh
IGZvbGlvX2FsbG9jKCkgd291bGQgYWxzbyBhdXRvbWF0aWNhbGx5IGJlbmVmaXQgZnJvbSB0aGlz
IHBhdGNoPw0KDQpDdXJyZW50bHksIHZtYXAoKSB0YWtlcyBhIHBhZ2VzIGFycmF5IGFzIGFuIGFy
Z3VtZW50LiBTbyBldmVuIGZvciBhIGZvbGlvLA0Kd2UgbmVlZCB0byBleHBhbmQgaXQgaW50byBp
bmRpdmlkdWFsIHBhZ2VzLiBTaW1wbHkgcGFzc2luZyBhIGZvbGlvcyBhcnJheSB0bw0Kdm1hbGxv
YyBsaWtlbHkgd29u4oCZdCB3b3JrLCBzaW5jZSB2bWFwKCkgY291bGQgc3RhcnQgYW5kIGVuZCBh
dCBzdWJwYWdlcw0KaW4gdGhlIG1pZGRsZSBvZiBhIGZvbGlvLg0KDQpUaGFua3MNCkJhcnJ5DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
