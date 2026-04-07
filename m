Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBRmKsNk5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5C1431ADD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C089406BE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:39:14 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 38FED3F920
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Apr 2026 11:29:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=VRymdJxR;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of baohua@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=baohua@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9F896404A3
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Apr 2026 11:29:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 806BAC2BCAF
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Apr 2026 11:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775561385;
	bh=qzFdNf24GS4Ly5CHwayANIzIoWhMQniFzGPpI4pUPho=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=VRymdJxRuhc+sXQJ3omz0sGJB48T/7pvRtUZXqY3wGZd74vKd9W4tbUbYWm7dbFv4
	 I65iiYgEs1txsLFXGHHMFB6POuzcLDGzxGNDFL4KrOCtVqgu9bwUqE0mRffpeui0PG
	 EK8RLF8dvdYEONOst4FaFdZiwfiHbE7/ptJVXHgMku70HSws8StYSSkF4Qz+Yfti6/
	 KRuOd9PZSFDZgUNPON/2JLmo5tj/nF5WC8FSfXhtVYxtUeP5MsiO/k3ER//sqUs4k3
	 n7VCm5QCrBMNjRVZxtdwmC3V7OpgRs6oc5ujlkR31qYhx7yv5ul7suRP28NAoH1jAC
	 QtDEdEO7WZ3FA==
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-8d560ede296so367834685a.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Apr 2026 04:29:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVa6GnnJ8rSBn+RwpX0Y37uOiqReePuCOOdpYUHFERdWLpCQIq/PbXBsiXhGV0ScDkDFsExd1l/v8ojrp0J@lists.linaro.org
X-Gm-Message-State: AOJu0YygKK8eKi7TvzXYKu1LOJvviMH+2nCPOPWdcPx06hF1Hy3TB9MV
	yB49ZfQJZnAPiBasLvV1re9av1KspA3SmxopQiphoHHUgs9NTjtS6NBIn+ioaz62JP3/Ga+l57k
	j4erCtF7jU1GUSNHVeFBr6dsxQvyCR1M=
X-Received: by 2002:a0c:f107:0:b0:89a:13a5:77c4 with SMTP id
 6a1803df08f44-8a7042f8989mr199609476d6.29.1775561384825; Tue, 07 Apr 2026
 04:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260406214938.24142-1-baohua@kernel.org> <a6d1c89a-3c71-4e06-adcb-56595071dcc2@amd.com>
In-Reply-To: <a6d1c89a-3c71-4e06-adcb-56595071dcc2@amd.com>
From: Barry Song <baohua@kernel.org>
Date: Tue, 7 Apr 2026 19:29:33 +0800
X-Gmail-Original-Message-ID: <CAGsJ_4xquCzQLbvpkC8arAN=9KhrAkdPdxnB=v85GvvQu23Xyg@mail.gmail.com>
X-Gm-Features: AQROBzByIp-0FrtX8dG4RIp7qFh22LJ0SbQzx_vfuvErBnErshq0dg6Qu7Vr00I
Message-ID: <CAGsJ_4xquCzQLbvpkC8arAN=9KhrAkdPdxnB=v85GvvQu23Xyg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: baohua@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BH3SN4X6FM2NTSM5FXNNQPYKXXZ6KIGJ
X-Message-ID-Hash: BH3SN4X6FM2NTSM5FXNNQPYKXXZ6KIGJ
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:38:54 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Xueyuan Chen <Xueyuan.chen21@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: Optimize sg_table-to-pages conversion in vmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BH3SN4X6FM2NTSM5FXNNQPYKXXZ6KIGJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[318];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,linaro.org,collabora.com,arm.com,google.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.278];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[baohua@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 6F5C1431ADD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBBcHIgNywgMjAyNiBhdCAzOjU44oCvUE0gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gT24gNC82LzI2IDIzOjQ5LCBCYXJyeSBT
b25nIChYaWFvbWkpIHdyb3RlOg0KPiA+IEZyb206IFh1ZXl1YW4gQ2hlbiA8WHVleXVhbi5jaGVu
MjFAZ21haWwuY29tPg0KPiA+DQo+ID4gUmVwbGFjZSB0aGUgaGVhdnkgZm9yX2VhY2hfc2d0YWJs
ZV9wYWdlKCkgaXRlcmF0b3IgaW4gc3lzdGVtX2hlYXBfZG9fdm1hcCgpDQo+ID4gd2l0aCBhIG1v
cmUgZWZmaWNpZW50IG5lc3RlZCBsb29wIGFwcHJvYWNoLg0KPiA+DQo+ID4gSW5zdGVhZCBvZiBp
dGVyYXRpbmcgcGFnZSBieSBwYWdlLCB3ZSBub3cgaXRlcmF0ZSB0aHJvdWdoIHRoZSBzY2F0dGVy
bGlzdA0KPiA+IGVudHJpZXMgdmlhIGZvcl9lYWNoX3NndGFibGVfc2coKS4gQmVjYXVzZSBwYWdl
cyB3aXRoaW4gYSBzaW5nbGUgc2cgZW50cnkNCj4gPiBhcmUgcGh5c2ljYWxseSBjb250aWd1b3Vz
LCB3ZSBjYW4gcG9wdWxhdGUgdGhlIHBhZ2UgYXJyYXkgd2l0aCBhIGluIGFuDQo+ID4gaW5uZXIg
bG9vcCB1c2luZyBzaW1wbGUgcG9pbnRlciBtYXRoLiBUaGlzIHNhdmUgYSBsb3Qgb2YgdGltZS4N
Cj4gPg0KPiA+IFRoZSBXQVJOX09OIGNoZWNrIGlzIGFsc28gcHVsbGVkIG91dCBvZiB0aGUgbG9v
cCB0byBzYXZlIGJyYW5jaA0KPiA+IGluc3RydWN0aW9ucy4NCj4gPg0KPiA+IFBlcmZvcm1hbmNl
IHJlc3VsdHMgbWFwcGluZyBhIDJHQiBidWZmZXIgb24gUmFkeGEgTzY6DQo+ID4gLSBCZWZvcmU6
IH4xNDQwMDAwIG5zDQo+ID4gLSBBZnRlcjogIH4yMzIwMDAgbnMNCj4gPiAofjg0JSByZWR1Y3Rp
b24gaW4gaXRlcmF0aW9uIHRpbWUsIG9yIH42LjJ4IGZhc3RlcikNCj4NCj4gV2VsbCByZWFsIHF1
ZXN0aW9uIGlzIHdoeSBkbyB5b3UgY2FyZSBhYm91dCB0aGUgdm1hcCBwZXJmb3JtYW5jZT8NCj4N
Cj4gVGhhdCBzaG91bGQgYmFzaWNhbGx5IG9ubHkgYmUgdXNlZCBmb3IgZmJkZXYgZW11bGF0aW9u
IChleGNlcHQgZm9yIFZNR0ZYKSBhbmQgd2UgYWJzb2x1dGVseSBkb24ndCBjYXJlIGFib3V0IHBl
cmZvcm1hbmNlIHRoZXJlLg0KDQpJIGFncmVlIHRoYXQgaW4gbWFpbmxpbmUsIGRtYV9idWZfdm1h
cCBpcyBub3QgdXNlZCB2ZXJ5IG9mdGVuLg0KSGVyZeKAmXMgd2hhdCBJIHdhcyBhYmxlIHRvIGZp
bmQ6DQoNCiAgMSAgIDE2MzggIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgPDxkbWFfYnVmX3Zt
YXBfdW5sb2NrZWQ+Pg0KICAgICAgICAgICAgIHJldCA9IGRtYV9idWZfdm1hcChkbWFidWYsIG1h
cCk7DQogICAyICAgIDM3NiAgZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMN
Cjw8ZHJtX2dlbV9zaG1lbV92bWFwX2xvY2tlZD4+DQogICAgICAgICAgICAgcmV0ID0gZG1hX2J1
Zl92bWFwKG9iai0+aW1wb3J0X2F0dGFjaC0+ZG1hYnVmLCBtYXApOw0KICAgMyAgICAgODUgIGRy
aXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtX3ByaW1lLmMNCjw8ZXRuYXZpdl9nZW1f
cHJpbWVfdm1hcF9pbXBsPj4NCiAgICAgICAgICAgICByZXQgPSBkbWFfYnVmX3ZtYXAoZXRuYXZp
dl9vYmotPmJhc2UuaW1wb3J0X2F0dGFjaC0+ZG1hYnVmLCAmbWFwKTsNCiAgIDQgICAgNDMzICBk
cml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9ibGl0LmMgPDxtYXBfZXh0ZXJuYWw+Pg0KICAg
ICAgICAgICAgIHJldCA9IGRtYV9idWZfdm1hcChiby0+dGJvLmJhc2UuZG1hX2J1ZiwgbWFwKTsN
CiAgIDUgICAgIDg4ICBkcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9nZW0uYyA8PHZtd19n
ZW1fdm1hcD4+DQogICAgICAgICAgICAgcmV0ID0gZG1hX2J1Zl92bWFwKG9iai0+aW1wb3J0X2F0
dGFjaC0+ZG1hYnVmLCBtYXApOw0KDQpIb3dldmVyLCBpbiB0aGUgQW5kcm9pZCBlY29zeXN0ZW0s
IHN5c3RlbV9oZWFwIGFuZCBzaW1pbGFyIGhlYXBzDQphcmUgd2lkZWx5IHVzZWQgYWNyb3NzIGNh
bWVyYSwgTlBVLCBhbmQgbWVkaWEgZHJpdmVycy4gTWFueSBvZiB0aGVzZQ0KZHJpdmVycyBhcmUg
bm90IGluIG1haW5saW5lIGJ1dCBkbyB1c2Ugdm1hcCgpIGluIHJlYWwgY29kZSBwYXRocy4NCg0K
QXMgSSBjYW4gc2hvdyB5b3Ugc29tZSBvZiB0aGVtIGZyb20gTVRLIHBsYXRmb3JtczoNCg0KMToN
ClsgICAgNi42ODk4NDldIHN5c3RlbV9oZWFwX3ZtYXArMHgxN2MvMHgyNTQgW3N5c3RlbV9oZWFw
DQo4ZDM1ZDRjZTM1YmIzMGQ4YTYyM2YwYjk4NjM5OThhMjUyOGU0MTc1XQ0KWyAgICA2LjY4OTg1
OV0gZG1hX2J1Zl92bWFwX3VubG9ja2VkKzB4YjgvMHgxMzANClsgICAgNi42ODk4NjFdIGFvdl9j
b3JlX2luaXQrMHgzMTAvMHg3MTggW210a19hb3YNCjk2ZTJlNWU5NDU3ZGNkYWNjZTNhNzYyOWIw
NjAwYzVkYmVjYTYyM2JdDQpbICAgIDYuNjg5ODczXSBtdGtfYW92X3Byb2JlKzB4NDM0LzB4NWI0
IFttdGtfYW92DQo5NmUyZTVlOTQ1N2RjZGFjY2UzYTc2MjliMDYwMGM1ZGJlY2E2MjNiXQ0KDQoy
Og0KWyAgMTE2LjE4MTY0M10gX192bWFwX3BhZ2VzX3JhbmdlX25vZmx1c2grMHg3YzQvMHg4MTQN
ClsgIDExNi4xODE2NDVdIHZtYXArMHhiNC8weDE0OA0KWyAgMTE2LjE4MTY0N10gc3lzdGVtX2hl
YXBfdm1hcCsweDE3Yy8weDI1NCBbc3lzdGVtX2hlYXANCjhkMzVkNGNlMzViYjMwZDhhNjIzZjBi
OTg2Mzk5OGEyNTI4ZTQxNzVdDQpbICAxMTYuMTgxNjUxXSBkbWFfYnVmX3ZtYXBfdW5sb2NrZWQr
MHhiOC8weDEzMA0KWyAgMTE2LjE4MTY1M10gbXRrX2NhbV92YjJfdmFkZHIrMHhhMC8weGZjIFtt
dGtfY2FtX2lzcDhzDQowY2Y5YmU2Yzc3M2E4ZjE0YWFiOWRiOWViZjUzZmVhY2I0OTk4NDZhXQ0K
WyAgMTE2LjE4MTY4Ml0gdmIyX3BsYW5lX3ZhZGRyKzB4NWMvMHg3OA0KWyAgMTE2LjE4MTY4NF0g
bXRrX2NhbV9qb2JfZmlsbF9pcGlfZnJhbWUrMHhhOGMvMHgxMjhjIFttdGtfY2FtX2lzcDhzDQow
Y2Y5YmU2Yzc3M2E4ZjE0YWFiOWRiOWViZjUzZmVhY2I0OTk4NDZhXQ0KDQozOg0KWyAgMTE2LjMw
NjE3OF0gX192bWFwX3BhZ2VzX3JhbmdlX25vZmx1c2grMHg3YzQvMHg4MTQNClsgIDExNi4zMDYx
ODNdIHZtYXArMHhiNC8weDE0OA0KWyAgMTE2LjMwNjE4N10gc3lzdGVtX2hlYXBfdm1hcCsweDE3
Yy8weDI1NCBbc3lzdGVtX2hlYXANCjhkMzVkNGNlMzViYjMwZDhhNjIzZjBiOTg2Mzk5OGEyNTI4
ZTQxNzVdDQpbICAxMTYuMzA2MjA5XSBkbWFfYnVmX3ZtYXBfdW5sb2NrZWQrMHhiOC8weDEzMA0K
WyAgMTE2LjMwNjIxMl0gYXB1X3N5c21lbV9hbGxvYysweDE2OC8weDM2MCBbYXB1c3lzDQo4ZmIz
M2NiY2UzYjg1OGQ2NTFiOWRhMjZmYzM3MDA5MGE2N2NmYjcwXQ0KWyAgMTE2LjMwNjQ2OF0gbWR3
X21lbV9hbGxvYysweGQ4LzB4MzE0IFthcHVzeXMNCjhmYjMzY2JjZTNiODU4ZDY1MWI5ZGEyNmZj
MzcwMDkwYTY3Y2ZiNzBdDQpbICAxMTYuMzA2NTkxXSBtZHdfbWVtX3Bvb2xfY2h1bmtfYWRkKzB4
MTFjLzB4NDAwIFthcHVzeXMNCjhmYjMzY2JjZTNiODU4ZDY1MWI5ZGEyNmZjMzcwMDkwYTY3Y2Zi
NzBdDQpbICAxMTYuMzA2NzEyXSBtZHdfbWVtX3Bvb2xfY3JlYXRlKzB4MTkwLzB4MmM4IFthcHVz
eXMNCjhmYjMzY2JjZTNiODU4ZDY1MWI5ZGEyNmZjMzcwMDkwYTY3Y2ZiNzBdDQpbICAxMTYuMzA2
ODMzXSBtZHdfZHJ2X29wZW4rMHgyMWMvMHg0N2MgW2FwdXN5cw0KOGZiMzNjYmNlM2I4NThkNjUx
YjlkYTI2ZmMzNzAwOTBhNjdjZmI3MF0NCg0KV2hpbGUgd2UgbWF5IHdhbnQgdG8gZW5jb3VyYWdl
IG1vcmUgb2YgdGhlc2UgZHJpdmVycyB0byB1cHN0cmVhbSwNCnNvbWUgYXNwZWN0cyBhcmUgYmV5
b25kIG91ciBjb250cm9sIChkaWZmZXJlbnQgU29DIHZlbmRvcnMpLCBidXQgd2UNCmNhbiBhdCBs
ZWFzdCBjb250cmlidXRlIHVwc3RyZWFtIG91cnNlbHZlcy4NCg0KQmVzdCBSZWdhcmRzDQpCYXJy
eQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
