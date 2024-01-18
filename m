Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD06831DF6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jan 2024 17:57:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 77D4143D54
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jan 2024 16:57:49 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by lists.linaro.org (Postfix) with ESMTPS id 2FC2D3F52E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jan 2024 16:57:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=W2Bo1JCE;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.178 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dbedb1ee3e4so10623696276.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jan 2024 08:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1705597049; x=1706201849; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cmZn+BROv+sMREBkau20U4T/TQEgObsLAqinfuULAyg=;
        b=W2Bo1JCEgR1LVbNAgNYucH5X7oSp7YQfmbBHY2Wx39NiiNDLnhixSPYWpHEklkKzbo
         XtMCjKsqDn+n2G0xd2j4pY33LxRdGy5gff/TfI0VCsiDYubEiyNUJKVdcqo6wG85th7O
         PNVDMNaWg58LPA08oQtLXkPmyH7MSHL35ngtsQ/UjpVYJg1+V9b1nep73rpw+Tvf7EYb
         rrSQmaDGLh4pDzNC1EgyLMyW8WZWW5zfPL5ANWICKuJk+ziWCT/g3IEJ5GOfRuXYQ6xI
         M+04NOur9j532W43bFABO8ncnivvI+JtpglkgWvdQu9TtkRTR5SsNBr3veMzPCupd2Oh
         Ni3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705597049; x=1706201849;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cmZn+BROv+sMREBkau20U4T/TQEgObsLAqinfuULAyg=;
        b=WYqmV94BvTioTXsZXMCLOVrdqnvDifYklFRSv7ybO13Z3z2vg6tOQ9QNBmdZrf38/u
         3c+ZNDz5ipxJRwzCBIrEsog90AfSiVWLmbb8QrI16Q78IiGVlpJQD5QQvMfzflK7XtFT
         8goJlLecyHcQko05FDi2FK8X0W2xcwQKM11Q+6jOI0eFWHBgRmJg1yc4ioXPYowyMm0Z
         aQqM7y0VCBbbCoZCtXi+HvUvmrrhnwIhHM6cmIyilfZNO5orJ/V6Hahu8Wj0dCGDOuro
         taIGSrEgPzF3VHRo53irRKDPRd/qgMZfK60iMU9wIo4pBfn3rKO3x+qIERfSOfq0b5F8
         fn/A==
X-Gm-Message-State: AOJu0YyqnZQCRgCecCPxQ1cN+UQ3AwyWxZ9+L6Ws19X68Ewzw/piLFAs
	MOb813/BUrsMVXGHbaXcDIv6vUB6rUxye1QnLIf0c55o2lqqdnJx5XvH06ebXtyTa94UULp63TM
	Fy+wQ3ZZilzVo1x24ML+NZw5wKklgUuHl52ao
X-Google-Smtp-Source: AGHT+IGdm+3tzpwneR3Std891dkepC+HcM/F/QU4NLlUSQFVDjEWUf46RxO8DdQGNQYUp4EkO2YYs2e+Vx5E/WIMRrc=
X-Received: by 2002:a25:748c:0:b0:dbd:7743:77cb with SMTP id
 p134-20020a25748c000000b00dbd774377cbmr856586ybc.128.1705597048380; Thu, 18
 Jan 2024 08:57:28 -0800 (PST)
MIME-Version: 1.0
References: <20240117181141.286383-1-tjmercier@google.com> <20a68f86-27f0-48f4-a066-7dcf0092858e@amd.com>
 <Zak6iW8lktml7f2H@phenom.ffwll.local>
In-Reply-To: <Zak6iW8lktml7f2H@phenom.ffwll.local>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Thu, 18 Jan 2024 08:57:16 -0800
Message-ID: <CABdmKX10zz6bk4VVDgsosJbA8_7WOxuCnkyYFiL1FPwtZ-C+WQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	"T.J. Mercier" <tjmercier@google.com>, Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>, Sandeep Patil <sspatil@android.com>,
	Laura Abbott <labbott@redhat.com>, android-mm@google.com, minchan@google.com,
	John Stultz <john.stultz@linaro.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.178:from];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2FC2D3F52E
X-Spamd-Bar: --------
Message-ID-Hash: 7OWSBXBLGWN5F6J2ITNV6JTKCETNUBKB
X-Message-ID-Hash: 7OWSBXBLGWN5F6J2ITNV6JTKCETNUBKB
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: daniel@ffwll.ch
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Don't track CMA dma-buf pages under RssFile
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7OWSBXBLGWN5F6J2ITNV6JTKCETNUBKB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBKYW4gMTgsIDIwMjQgYXQgNjo0OeKAr0FNIERhbmllbCBWZXR0ZXIgPGRhbmllbEBm
ZndsbC5jaD4gd3JvdGU6DQo+DQo+IE9uIFRodSwgSmFuIDE4LCAyMDI0IGF0IDExOjAyOjIyQU0g
KzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+ID4gQW0gMTcuMDEuMjQgdW0gMTk6MTEg
c2NocmllYiBULkouIE1lcmNpZXI6DQo+ID4gPiBETUEgYnVmZmVycyBhbGxvY2F0ZWQgZnJvbSB0
aGUgQ01BIGRtYS1idWYgaGVhcCBnZXQgY291bnRlZCB1bmRlcg0KPiA+ID4gUnNzRmlsZSBmb3Ig
cHJvY2Vzc2VzIHRoYXQgbWFwIHRoZW0gYW5kIHRyaWdnZXIgcGFnZSBmYXVsdHMuIEluDQo+ID4g
PiBhZGRpdGlvbiB0byB0aGUgaW5jb3JyZWN0IGFjY291bnRpbmcgcmVwb3J0ZWQgdG8gdXNlcnNw
YWNlLCByZWNsYWltDQo+ID4gPiBiZWhhdmlvciB3YXMgaW5mbHVlbmNlZCBieSB0aGUgTU1fRklM
RVBBR0VTIGNvdW50ZXIgdW50aWwgbGludXggNi44LCBidXQNCj4gPiA+IHRoaXMgbWVtb3J5IGlz
IG5vdCByZWNsYWltYWJsZS4gWzFdIENoYW5nZSB0aGUgQ01BIGRtYS1idWYgaGVhcCB0byBzZXQN
Cj4gPiA+IFZNX1BGTk1BUCBvbiB0aGUgVk1BIHNvIE1NIGRvZXMgbm90IHBva2UgYXQgdGhlIG1l
bW9yeSBtYW5hZ2VkIGJ5IHRoaXMNCj4gPiA+IGRtYS1idWYgaGVhcCwgYW5kIHVzZSB2bWZfaW5z
ZXJ0X3BmbiB0byBjb3JyZWN0IHRoZSBSU1MgYWNjb3VudGluZy4NCj4gPiA+DQo+ID4gPiBUaGUg
c3lzdGVtIGRtYS1idWYgaGVhcCBkb2VzIG5vdCBzdWZmZXIgZnJvbSB0aGlzIGlzc3VlIHNpbmNl
DQo+ID4gPiByZW1hcF9wZm5fcmFuZ2UgaXMgdXNlZCBkdXJpbmcgdGhlIG1tYXAgb2YgdGhlIGJ1
ZmZlciwgd2hpY2ggYWxzbyBzZXRzDQo+ID4gPiBWTV9QRk5NQVAgb24gdGhlIFZNQS4NCj4gPg0K
PiA+IE1obSwgbm90IGFuIGlzc3VlIHdpdGggdGhpcyBwYXRjaCBidXQgRGFuaWVsIHdhbnRlZCB0
byBhZGQgYSBjaGVjayBmb3INCj4gPiBWTV9QRk5NQVAgdG8gZG1hX2J1Zl9tbWFwKCkgd2hpY2gg
d291bGQgaGF2ZSBub3RlZCB0aGlzIGVhcmxpZXIuDQo+ID4NCj4gPiBJIGRvbid0IGZ1bGx5IHJl
bWVtYmVyIHRoZSBkaXNjdXNzaW9uIGJ1dCBmb3Igc29tZSByZWFzb24gdGhhdCB3YXMgbmV2ZXIN
Cj4gPiBjb21taXR0ZWQuIFdlIHNob3VsZCBwcm9iYWJseSB0cnkgdGhhdCBhZ2Fpbi4NCj4NCj4g
SWlyYyB0aGUgaXNzdWUgaXMgdGhhdCBkbWFfbW1hcCBpcyBub3QgZ3VhcmFudGVlZCB0byBnaXZl
IHlvdSBhIFZNX1NQRUNJQUwNCj4gbWFwcGluZywgYXQgbGVhc3Qgb24gYWJzb2x1dGVseSBhbGwg
YXJjaGl0ZWN0dXJlcy4gVGhhdCdzIHdoeSBJIGRlZmFjdG8NCj4gZHJvcHBlZCB0aGF0IGlkZWEs
IGJ1dCBpdCB3b3VsZCBpbmRlZWQgYmUgcmVhbGx5IGdyZWF0IGlmIHdlIGNvdWxkDQo+IHJlc3Vy
cmVjdCBpdC4NCg0KSSBhY3R1YWxseSBoYWQgaXQgaW4gbXkgaGVhZCB0aGF0IGl0IHdhcyBhIEJV
R19PTiBjaGVjayBmb3IgVk1fUEZOTUFQDQppbiBkbWFfYnVmX21tYXAgYW5kIGl0IHdhcyBtZXJn
ZWQsIHNvIEkgd2FzIHN1cnByaXNlZCB0byBkaXNjb3ZlciB0aGF0DQppdCB3YXNuJ3Qgc2V0IGZv
ciB0aGVzZSBDTUEgYnVmZmVycy4NCg0KPiBNYXliZSBmb3IgeDg2IG9ubHk/IE9yIHg4Nithcm12
OCwgSSdtIGhvbmVzdGx5IG5vdCBzdXJlIGFueW1vcmUgd2hpY2gNCj4gZXhhY3QgY2FzZXMgZW5k
ZWQgdXAgd2l0aCBhIFZNX05PUk1BTCBtYXBwaW5nIC4uLiBXb3VsZCBuZWVkIGEgcGlsZSBvZg0K
PiBkaWdnaW5nLg0KDQpMb29raW5nIGJhY2sgYXQgdGhlIHBhdGNoLCB0aGUgQ0kgZW1haWwgYXQg
dGhlIGVuZCBvZiB0aGUgdGhyZWFkIGxpc3RzDQphIGJ1bmNoIG9mIG5vdy1icm9rZW4gbGlua3Mg
dG8gRE1FU0ctV0FSTiB0ZXN0IGZhaWx1cmVzIEkgYXNzdW1lDQpwb2ludGVkIGF0IGEgbGFyZ2Ug
Y2h1bmsgb2YgdGhlbS4NCg0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzE2NjkxOTc1MDE3
My4xNTU3NS4yODY0NzM2OTgwNzM1MzQ2NzMwQGVtZXJpbC5mcmVlZGVza3RvcC5vcmcvDQoNCj4g
Pg0KPiA+ID4gWzFdaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC9tbS92bXNjYW4uYz9pZD1mYjQ2ZTIyYTllMzg2
M2UwOGFlZjg4MTVkZjlmMTdkMGY0YjlhZWRlDQo+ID4gPg0KPiA+ID4gRml4ZXM6IGI2MTYxNGVj
MzE4YSAoImRtYS1idWY6IGhlYXBzOiBBZGQgQ01BIGhlYXAgdG8gZG1hYnVmIGhlYXBzIikNCj4g
PiA+IFNpZ25lZC1vZmYtYnk6IFQuSi4gTWVyY2llcjx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCj4g
Pg0KPiA+IEFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQoNClRoYW5rcyBDaHJpc3RpYW4uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
