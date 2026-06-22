Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Uz0nK1xBOWqKpQcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 16:06:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A026B0287
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 16:06:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=VNPcUcVm;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73E874098A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 13:57:15 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 54D9D3F7C5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2026 13:57:07 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ED4F0601F8;
	Mon, 22 Jun 2026 13:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3C151F000E9;
	Mon, 22 Jun 2026 13:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782136626;
	bh=PlD1S0B/XpvNY8RPXUN/r3O5F8csNHGTI9Ji1I9li8U=;
	h=From:To:Cc:Subject:Date;
	b=VNPcUcVmDqH3JSCMcD7c8Kx4NWf9WvL6KSSzNhplQRCfFnIRX0m8FO8A90L7ckJU+
	 Te+WwEPOk1K5nWjKioYVJgKqSgMVDFU+6Q5ZOXErJWJzacEHyM+4Das0t7xB9G9CM8
	 Ew1Dkx6cS/IrE3WewqMCiDKHk9me6x/g+uc0UUSML69R3pfbI9GO36ibWqq079PxKJ
	 xbM1vHUxesPYm8hnTKpBd8H8bhlZXaMnJOeij9NjtFUhnj47NeiB+Y/BRmy0KRpro/
	 iNUkxJ9auT7bXUWNPTcnW50LxSug0bze2srBJbetGi/6czkb5kZblz5+p+A5FJaQDQ
	 ZXftLg7EOQBjQ==
From: Philipp Stanner <phasta@kernel.org>
To: Miguel Ojeda <ojeda@kernel.org>,
	Boqun Feng <boqun@kernel.org>,
	Gary Guo <gary@garyguo.net>,
	=?UTF-8?q?Bj=C3=B6rn=20Roy=20Baron?= <bjorn3_gh@protonmail.com>,
	Benno Lossin <lossin@kernel.org>,
	Andreas Hindborg <a.hindborg@kernel.org>,
	Alice Ryhl <aliceryhl@google.com>,
	Trevor Gross <tmgross@umich.edu>,
	Danilo Krummrich <dakr@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Philipp Stanner <phasta@kernel.org>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alexandre Courbot <acourbot@nvidia.com>,
	Asahi Lina <lina+kernel@asahilina.net>,
	Matthew Maurer <mmaurer@google.com>,
	Lorenzo Stoakes <ljs@kernel.org>,
	Joel Fernandes <joelagnelf@nvidia.com>,
	Burak Emir <bqe@google.com>,
	FUJITA Tomonori <fujita.tomonori@gmail.com>,
	Krishna Ketan Rai <prafulrai522@gmail.com>,
	Tamir Duberstein <tamird@kernel.org>,
	=?UTF-8?q?Onur=20=C3=96zkan?= <work@onurozkan.dev>,
	Eliot Courtney <ecourtney@nvidia.com>,
	Mirko Adzic <adzicmirko97@gmail.com>,
	Alistair Francis <alistair.francis@wdc.com>,
	Shankari Anand <shankari.ak0208@gmail.com>
Date: Mon, 22 Jun 2026 15:56:48 +0200
Message-ID: <20260622135654.334961-2-phasta@kernel.org>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-Spamd-Bar: -----
Message-ID-Hash: 4MU6VIPQX7A2ZMM6QXSXTQBFP5NTEPD7
X-Message-ID-Hash: 4MU6VIPQX7A2ZMM6QXSXTQBFP5NTEPD7
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 0/5] rust / dma_buf: Add abstractions for dma_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4MU6VIPQX7A2ZMM6QXSXTQBFP5NTEPD7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:phasta@kernel.org,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:acourbot@nvidia.com,m:lina+kernel@asahilina.net,m:mmaurer@google.com,m:ljs@kernel.org,m:joelagnelf@nvidia.com,m:bqe@google.com,m:fujita.tomonori@gmail.com,m:prafulrai522@gmail.com,m:tamird@kernel.org,m:work@onurozkan.dev,m:ecourtney@nvidia.com,m:adzicmirko97@gmail.com,m:alistair.francis@wdc.com,m:shankari.ak0208@gmail.com,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:lina@asahilina.net,m:fujitatomonori@gmail.com,m:shankariak0208@gmail.com,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[33];
	FREEMAIL_TO(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,collabora.com,linuxfoundation.org,nvidia.com,asahilina.net,gmail.com,onurozkan.dev,wdc.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 21A026B0287

Q2hhbmdlcyBzaW5jZSB2MzoNCiAgLSBBZGQgYSBGSVhNRSBmb3IgYW4gZW5jb3VudGVyZWQgUnVz
dCBjb21waWxlciBidWcuIChHYXJ5KQ0KICAtIEFkZCBuZXcgUnVzdCBmaWxlcyBhbHNvIHRvIERS
TSBkcml2ZXJzICYgY29tbW9uIGluZnJhc3RydWN0dXJlDQogICAgTUFJTlRBSU5FUlMgZmlsZS4g
KERhbmlsbykNCiAgLSBSZXBvc2l0aW9uIEVDQU5DRUxFRCBlcnJvciBjb2RlLiAoTWlndWVsKQ0K
ICAtIFJlcGxhY2UgcmVmY291bnRlZCBGZW5jZUN0eCBpbiBEcml2ZXJGZW5jZURhdGEgd2l0aCBh
IHJlZmVyZW5jZSBwbHVzDQogICAgbGlmZSB0aW1lLiAoQm9yaXMpDQogIC0gUmUtYWRkIHJjdV9i
YXJyaWVyKCkgcGF0Y2gsIHNpbmNlIHdlIG5vdyBjYW4gdXNlIGl0IGZvciBkcm9wcGluZyB0aGUN
CiAgICBmZW5jZSBjb250ZXh0LiAoRGFuaWxvKQ0KICAtIEFkZCBmb3Jnb3R0ZW4gUi1iIGZyb20g
QWxpY2UsIGFuZCBBY2tzIGZvciBNQUlOVEFJTkVSUyBmcm9tDQogICAgQ2hyaXN0aWFuIGFuZCBT
dW1pdC4NCg0KQ2hhbmdlcyBzaW5jZSB2MjoNCiAgLSBEb24ndCBkcm9wIERyaXZlckZlbmNlRGF0
YSBhcyBhIHdob2xlLCBidXQgb25seSB0aGUgbWVtYmVycyB3ZQ0KICAgIHJlYWxseSB3YW50IHRv
IGRyb3AuIEdpdmVzIG1vcmUgcm9idXN0bmVzcy4gKEdhcnkpLg0KICAtIEJyZWFrIGFwYXJ0IGxh
cmdlIHBpbl9pbml0X2Zyb21fY2xvc3VyZSgpLiAoRGFuaWxvLCBPbnVyKQ0KICAtIFJlbW92ZSBy
Y3VfYmFycmllcigpIGFuZCBzeW5jaHJvbml6ZV9yY3UoKSBmcm9tIEZlbmNlQ3R4Ojpkcm9wKCku
DQogICAgRmVuY2VDdHggbWlnaHQgZHJvcCBpbiBhdG9taWMgY29udGV4dCwgd2hlcmUgeW91IG11
c3Qgbm90IHBlcmZvcm0NCiAgICB0aG9zZSBvcGVyYXRpb25zLiBXaXRoIHRoZSBjdXJyZW50IHdh
eSBDIGRtYV9mZW5jZSBpcyBkZXNpZ25lZCwgdGhlDQogICAgZHJpdmVyIG11c3Qgd2FpdCBmb3Ig
YSBncmFjZSBwZXJpb2QgbWFudWFsbHkgdW50aWwgaXQgdW5sb2Fkcy4NCiAgLSBSZXBhaXIgdGhl
IERyaXZlckZlbmNlQm9ycm93IGltcGxlbWVudGF0aW9uLCBwcm9wZXJseSBpbmplY3RpbmcgYQ0K
ICAgIGxpZmUgdGltZSBpbnRvIGl0LiAoRGFuaWxvKQ0KICAtIEZpeCBtZW1vcnkgbGF5b3V0IGJ1
ZyBmb3IgcmN1X2hlYWQuIChPbnVyKQ0KICAtIERyb3AgUkNVIHBhdGNoZXMsIHNpbmNlIHRoaXMg
c2VyaWVzIGRvZXNuJ3QgbmVlZCB0aGVtIGFueW1vcmUuDQoNCkNoYW5nZXMgc2luY2UgdjE6DQog
IC0gUmVtb3ZlIHVubmVjZXNzYXJ5IG11dGFibGUgcmVmZXJlbmNlcyAoQWxpY2UpDQogIC0gU3Bs
aXQgdXAgdW5zYWZlIGNvbW1lbnRzIHdoZXJlIHBvc3NpYmxlIChEYW5pbG8pDQogIC0gUmVtb3Zl
IFBoYW50b21EYXRhICsgaW1wbGVtZW50IEZlbmNlQ3R4IG9wcyB0cmFpdCAoQm9yaXMpDQogIC0g
Q29uc2lzdGVudGx5IGNhbGwgRmVuY2VDdHggZ2VuZXJpYyBkYXRhIGBUYC4gRmVuY2VEYXRhVHlw
ZSBpcw0KICAgIGRlcml2ZWQgZnJvbSB0aGF0LiAoQm9yaXMpDQogIC0gQWRkIGFic3RyYWN0aW9u
cyBmb3IgY2FsbF9yY3UoKSBhbmQgc3luY2hyb25pemVfcmN1KCkgKERhbmlsbykNCiAgLSBBZGQg
RUNBTkNFTEVEIGVycm9yIGNvZGUgaW4gUnVzdCAoQWxpY2UpDQogIC0gUmVtb3ZlIHRoZSByY3Vf
YmFycmllcigpIGZyb20gRmVuY2VDdHg6OmRyb3AoKSDigJMgYmVjYXVzZSB3ZSBub3cgdXNlDQog
ICAgY2FsbF9yY3UoKSwgdGhlcmUgY2FuIGJlIG5vIFVBRiBhY2Nlc3MgdG8gdGhlIEZlbmNlQ3R4
IGFueW1vcmUuIEluDQogICAgYW55IGNhc2UsIGl0IGlzIGlsbGVnYWwgdG8gdXNlIGVpdGhlciBj
YWxsX3JjdSgpIG9yDQogICAgc3luY2hyb25pemVfcmN1KCkgaW4gRmVuY2VDdHg6OmRyb3AoKSwg
YmVjYXVzZSBvdXIgbmV3DQogICAgZHJvcF9kcml2ZXJfZmVuY2VfZGF0YSgpIGNhbiBydW4gaW4g
YXRvbWljIGNvbnRleHQgYW5kIG1pZ2h0IHB1dCB0aGUNCiAgICBsYXN0IGZlbmNlX2N0eCByZWZl
cmVuY2UuDQogICAgU28gd2Ugbm93IG9ubHkgaGF2ZSB0byBndWFyZCBhZ2FpbnN0IG1vZHVsZSB1
bmxvYWQsIHdoaWNoIGl0IHNlZW1zDQogICAgZWl0aGVyIHRoZSBkcml2ZXIgb3IgUnVzdCBkcml2
ZXItY29yZSAvIG1vZHVsZSB1bmxvYWQgaW5mcmFzdHJ1Y3R1cmUNCiAgICBtdXN0IHNvbHZlLg0K
ICAtIE1pbm9yIGZvcm1hdHRpbmcgZXRjLiBjaGFuZ2VzDQogIC0gQWRkIEMgaGVscGVycyB0byBN
QUlOVEFJTkVSUy4gKERhbmlsbykNCiAgLSBFbnN1cmUgdGhhdCBgRmVuY2U6OmlzX3NpZ25hbGVk
KClgIGlzIGZ1bGx5IHN5bmNocm9uaXplZCwgaS5lLiwgYWxsDQogICAgY2FsbGJhY2tzIHJlYWxs
eSBoYXZlIHJ1bi4gU2VlIFsxXSBhbmQgWzJdLiAoTXlzZWxmLCBDaHJpc3RpYW4NCiAgICBLw7Zu
aWcpDQoNCkNoYW5nZXMgc2luY2UgdGhlIFJGQ3M6DQogIC0gSW5jbHVkZSBzdXBwb3J0IGZvciBG
b3JlaWduT3duYWJsZSBmb3IgQVJlZiwgc28gdGhhdCBhIEZlbmNlIGNhbiBiZQ0KICAgIHN0dWZm
ZWQgaW50byBhbiBYQXJyYXkgZXQgYWwuIChDb2RlIGJ5IERhbmlsbykNCiAgLSBJbXBsZW1lbnQg
Rm9yZWlnbk93bmFibGUgKHdpdGggbmV3IGJvcnJvdyB0eXBlKSBmb3IgRHJpdmVyRmVuY2UsIHNv
DQogICAgdGhhdCBpdCBjYW4gYmUgc3R1ZmZlZCBpbnRvIGFuIFhBcnJheS4NCiAgLSBJbmNsdWRl
IHRoZSByY3U6OlJjdUJveCBkYXRhIHR5cGUgdG8gZGVmZXIgZHJvcHBpbmcgZGF0YSB3aXRoIFJD
VQ0KICAgIChDb2R5IGJ5IEFsaWNlKQ0KICAtIFBvcnQgRG1hRmVuY2UgdG8gUmN1Qm94IHRvIG1h
a2UgVUFGIGJ1Z3MgdGhyb3VnaCBsYXRlciwgbmV3IGRtYV9mZW5jZQ0KICAgIGNhbGxiYWNrcyAo
YmFja2VuZF9vcHMpIGltcG9zc2libGUuDQogIC0gRm9yY2UgdXNlcnMgdG8gcGFzcyB0aGVpciBm
ZW5jZSBkYXRhIGluIGFuIFJjdUJveCAob3IgaGF2ZSBpdCBub3QNCiAgICBuZWVkIGRyb3AoKSkg
dGhyb3VnaCBhIFNlYWxlZCB0cmFpdC4NCiAgLSBEb2N1bWVudCB0aGUgcnVsZXMgZm9yIHRoZSB1
c2VyJ3MgRHJpdmVyRmVuY2U6OmRhdGEncyBkcm9wDQogICAgaW1wbGVtZW50YXRpb24gdmVyeSBj
bGVhcmx5IChkZWFkbG9jayBkYW5nZXIpLg0KICAtIHJ1c3RmbXQsIENsaXBweS4NCiAgLSBWYXJp
b3VzIHN0eWxlIHN1Z2dlc3Rpb25zLCBzYWZldHkgY29tbWVudHMsIGV0Yy4gKMOWbnVyKQ0KICAt
IEFkZCBfX3J1c3RfaGVscGVyIHByZWZpeCB0byBoZWxwZXIgZnVuY3Rpb25zLiAow5ZudXIpDQoN
CkNoYW5nZXMgaW4gUkZDIHYzOg0KICAtIE9taXQgSm9iUXVldWUgcGF0Y2hlcyBmb3Igbm93DQog
IC0gQ29tcGxldGVseSByZWRlc2lnbiB0aGUgbWVtb3J5IGxheW91dDogSW5zdGVhZCBvZiBhIEZl
bmNlDQogICAgcmVmY291bnRpbmcgYSBEcml2ZXJGZW5jZSwgYm90aCBub3cgbGl2ZSBpbiB0aGUg
c2FtZSBhbGxvY2F0aW9uIHRvDQogICAgYWxsb3cgZm9yIGZ1dHVyZSBzdXBwb3J0IHRoZSBkbWFf
ZmVuY2UgYmFja2VuZF9vcHMgY2FsbGJhY2tzIHdoaWNoDQogICAgbmVlZCB0byBkbyBjb250YWlu
ZXJfb2YuIChtb3N0bHkgQm9yaXMncyBmZWVkYmFjaykNCiAgLSBBbGxvdyBmb3IgcHJlLWFsbG9j
YXRpbmcgZmVuY2VzIHRvIGF2b2lkIGRlYWRsb2NrcyB3aGVuIHN1Ym1pdHRpbmcNCiAgICBqb2Jz
IHRvIGEgR1BVLiAoQm9yaXMpDQogIC0gU2ltdWx0YW5lb3VzbHksIGFsbG93IGZvciBwcmUtcHJl
cGFyaW5nIGZlbmNlIGNhbGxiYWNrIG9iamVjdHMsIHNvDQogICAgdGhlIGRyaXZlciBjYW4gYWxs
b2NhdGUgdGhlbSB3aGVuIGl0IHNlZXMgZml0LiAoY29kZSBsYXJnZWx5IHN0b2xlbg0KICAgIGFu
ZCBpbnNwaXJlZCBieSBEYW5pZWwpLg0KICAtIFNpZ25hbCBmZW5jZXMgb24gZHJvcCwgZW5zdXJl
IHN5bmNocm9uaXphdGlvbi4NCiAgLSBGb3JjZSB1c2VycyB0byBzZXQgYW4gZXJyb3IgY29kZSB3
aGVuIHNpZ25hbGxpbmcuDQogIC0gV3JpdGUgbW9yZSBkb2N1bWVudGF0aW9uDQogIC0gQSB0b24g
b2YgbWlub3Igb3RoZXIgY2hhbmdlcy4NCg0KDQpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
ZHJpLWRldmVsLzIwMjYwNjA4MTQyNDM2LjI2NTgyMC0yLXBoYXN0YUBrZXJuZWwub3JnLw0KWzJd
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDI2MDYxMjEwNDI1MS4yMjY0NzA3
LTItcGhhc3RhQGtlcm5lbC5vcmcvDQoNCg0KQWxyaWdodCwgc28gc2luY2UgdGhlIGxhc3QgUkZD
cyBkaWQgbm90IHJldmVhbCBzaWduaWZpY2FudCBkZXNpZ24NCmlzc3VlcywgSSBkZWNpZGVkIHRv
IHRyYW5zaXRpb24gdGhpcyBzZXJpZXMgdG8gYSB2MSBhbmQgaG9wZSB0aGF0IHdlIGNhbg0KZ2V0
IGl0IHVwc3RyZWFtLg0KDQpUaGlzIG5vdyBpbmNsdWRlcyBjb2RlIGZvciBtb3JlIGNvbW1vbiBp
bmZyYXN0cnVjdHVyZSB0aGF0IGRtYV9mZW5jZQ0KbmVlZHMsIGNvbnRyaWJ1dGVkIGJ5IERhbmls
byBhbmQgQWxpY2UuDQoNCi0tLQ0KDQpPbGQgY292ZXIgbGV0dGVyIGZvciBSRkM6DQoNClNvLCB0
aGlzIGlzIHRoZSBzcGlyaXR1YWwgc3VjY2Vzc29yIG9mIHRoZSBmaXJzdCAvIHNlY29uZCBSRkMg
WzFdLiB2Mg0KYWxzbyBjb250YWluZWQgY29kZSBmb3IgZHJtOjpKb2JRdWV1ZSwgYnV0IG1vc3Rs
eSB0byBzaG93IGhvdyB0aGUgZmVuY2UNCmNvZGUgd291bGQgYmUgdXNlZC4gSm9iUXVldWUgaXMg
dW5kZXIgaGVhdnkgcmV3b3JrIHJpZ2h0IG5vdywgc28gSSBkb24ndA0Kd2FudCB0byBib3RoZXIg
eW91ciBleWVzIHdpdGggaXQuIFRoZSBkb2NzdHJpbmcgZXhhbXBsZXMgc2hvdWxkIHNob3cgaG93
DQpSdXN0IGZlbmNlcyBhcmUgc3VwcG9zZWQgdG8gYmUgdXNlZCwgdGhvdWdoLg0KDQpUaGlzIHYz
IGNvbnRhaW5zIGEgaHVnZSBhbW91bnQgb2YgaGlnaGx5IHZhbHVhYmxlIGZlZWRiYWNrIGZyb20g
YQ0KdmFyaWV0eSBvZiBwZW9wbGUsIG5vdGFibHkgQm9yaXMsIGJ1dCBhbHNvIGZyb20gQWxpY2Us
IEdhcnkgYW5kIERhbmlsby4NCg0KVGhlcmUgYXJlIHNvbWUgVE9ET3Mgb3BlbiAoYSBiZXR0ZXIg
dHJhaXQgZm9yIGZlbmNlIGJhY2tlbmRfb3BzIGFuZCBSQ1UNCnN1cHBvcnQpLCBidXQgbXkgaG9w
ZSBpcyB0aGF0IHRoaXMgZWZmb3J0IGlzIG5vdyBmaW5hbGx5IGFwcHJvYWNoaW5nIGl0cw0KZW5k
Lg0KDQpJIHdvdWxkIGdyZWF0bHkgYXBwcmVjaWF0ZSBmZWVkYmFjayBhbmQgZXNwZWNpYWxseSBt
b3JlIGluZm9ybWF0aW9uDQphYm91dCB3aGF0IG1pZ2h0IGJlIG1pc3NpbmcgdG8gbWFrZSB0aGlz
IHVzYWJsZSwgd2hpY2ggaXMgb2J2aW91c2x5DQp3aGVyZSBEYW5pZWwncyBhbmQgQm9yaXMncyBm
ZWVkYmFjayB3aWxsIGJlIHZhbHVhYmxlIG9uY2UgbW9yZS4NCg0KUGxlYXNlIHJlZ2FyZCB0aGlz
IHBhdGNoIGp1c3QgYXMgd2hhdCBpdCdzIHRpdGxlZDogYW4gUkZDLCB0byBkaXNjdXNzIGENCmJp
dCBtb3JlIGFuZCB0byBpbmZvcm0gYSBicm9hZGVyIGNvbW11bml0eSBhYm91dCB3aGF0IHRoZSBj
dXJyZW50IHN0YXRlDQppcyBhbmQgd2hlcmUgdGhpcyBpcyBoZWFkaW5nIGF0Lg0KDQpNYW55IHJl
Z2FyZHMsDQpQaGlsaXBwDQoNClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9ydXN0LWZvci1s
aW51eC8yMDI2MDIwMzA4MTQwMy42ODczMy0yLXBoYXN0YUBrZXJuZWwub3JnLw0KDQpEYW5pbG8g
S3J1bW1yaWNoICgxKToNCiAgcnVzdDogdHlwZXM6IGltcGxlbWVudCBGb3JlaWduT3duYWJsZSBm
b3IgQVJlZjxUPg0KDQpQaGlsaXBwIFN0YW5uZXIgKDQpOg0KICBydXN0OiBlcnJvcjogQWRkIEVD
QU5DRUxFRCBlcnJvciBjb2RlDQogIHJ1c3Q6IHN5bmM6IEFkZCBhYnN0cmFjdGlvbiBmb3IgcmN1
X2JhcnJpZXIoKQ0KICBydXN0OiBBZGQgZG1hX2ZlbmNlIGFic3RyYWN0aW9ucw0KICBNQUlOVEFJ
TkVSUzogQWRkIGVudHJ5IGZvciBSdXN0IGRtYS1idWYNCg0KIE1BSU5UQUlORVJTICAgICAgICAg
ICAgICAgICAgICAgIHwgICA1ICsNCiBydXN0L2JpbmRpbmdzL2JpbmRpbmdzX2hlbHBlci5oICB8
ICAgMSArDQogcnVzdC9oZWxwZXJzL2RtYV9mZW5jZS5jICAgICAgICAgfCAgNDggKysNCiBydXN0
L2hlbHBlcnMvaGVscGVycy5jICAgICAgICAgICB8ICAgMSArDQogcnVzdC9rZXJuZWwvZG1hX2J1
Zi9kbWFfZmVuY2UucnMgfCA4NzAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KIHJ1
c3Qva2VybmVsL2RtYV9idWYvbW9kLnJzICAgICAgIHwgIDE0ICsNCiBydXN0L2tlcm5lbC9lcnJv
ci5ycyAgICAgICAgICAgICB8ICAgMSArDQogcnVzdC9rZXJuZWwvbGliLnJzICAgICAgICAgICAg
ICAgfCAgIDEgKw0KIHJ1c3Qva2VybmVsL3N5bmMvYXJlZi5ycyAgICAgICAgIHwgIDM5ICsrDQog
cnVzdC9rZXJuZWwvc3luYy9yY3UucnMgICAgICAgICAgfCAgIDYgKw0KIDEwIGZpbGVzIGNoYW5n
ZWQsIDk4NiBpbnNlcnRpb25zKCspDQogY3JlYXRlIG1vZGUgMTAwNjQ0IHJ1c3QvaGVscGVycy9k
bWFfZmVuY2UuYw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBydXN0L2tlcm5lbC9kbWFfYnVmL2RtYV9m
ZW5jZS5ycw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBydXN0L2tlcm5lbC9kbWFfYnVmL21vZC5ycw0K
DQoNCmJhc2UtY29tbWl0OiA4NDhiZjU3ZTk4ZTE2NzhjZTdhNDllYjRlMGJmMDUwMmRhOTVkYzA3
DQotLSANCjIuNTQuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
