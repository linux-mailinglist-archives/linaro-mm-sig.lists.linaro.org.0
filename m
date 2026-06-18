Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yuBHMCjyM2ovJgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 15:27:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDBE6A07B0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 15:27:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=dNj5jIAN;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 080CF40AC1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 13:27:03 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 3AEDE3F853
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2026 13:26:52 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B0DC360137;
	Thu, 18 Jun 2026 13:26:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAAE71F00A3F;
	Thu, 18 Jun 2026 13:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781789211;
	bh=S+IeYBLjthQLC8tOuLtmAcLP+oVJRPiahAFEOiMpnYg=;
	h=From:To:Cc:Subject:Date;
	b=dNj5jIANF9Sv/hGj5kge8706lvEAzwTHLBs15jjN3QXBEVkhsMiPxRBMqHNWKbjLj
	 Ym5FVNoPb0EKnVNzmfHdRatMS4xNi9FvkuhVbu6jxWvrwlr8j4UalbTG3u/55bnjZY
	 B9lsCKUBhvWkRzmCDiPXL8HV6zQ17rDiCVujV9OmAUrd/yoSgPu+PUmLcx7JXraV/g
	 JYtBBfTeL7jaCkEvrOvN3/NS/puI4OuQwdSnSuaxbpd9LFqr9X+KW2S801mXfUaSsz
	 kUIYomaOGoByJW1/3h7j3stqGavTUltKWWDbptKzaiRY1a+PSu4hHwtPjJh3KO2Ftn
	 aJT6FgqRMhGMQ==
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
Date: Thu, 18 Jun 2026 15:26:23 +0200
Message-ID: <20260618132628.3811068-2-phasta@kernel.org>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-Spamd-Bar: -----
Message-ID-Hash: OXYUTL373PIMW7RRBAQJW5RTA2447OEJ
X-Message-ID-Hash: OXYUTL373PIMW7RRBAQJW5RTA2447OEJ
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 0/4] rust / dma_buf: Add abstractions for dma_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OXYUTL373PIMW7RRBAQJW5RTA2447OEJ/>
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
	GREYLIST(0.00)[pass,meta];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4DDBE6A07B0

Q2hhbmdlcyBzaW5jZSB2MjoNCiAgLSBEb24ndCBkcm9wIERyaXZlckZlbmNlRGF0YSBhcyBhIHdo
b2xlLCBidXQgb25seSB0aGUgbWVtYmVycyB3ZQ0KICAgIHJlYWxseSB3YW50IHRvIGRyb3AuIEdp
dmVzIG1vcmUgcm9idXN0bmVzcy4gKEdhcnkpLg0KICAtIEJyZWFrIGFwYXJ0IGxhcmdlIHBpbl9p
bml0X2Zyb21fY2xvc3VyZSgpLiAoRGFuaWxvLCBPbnVyKQ0KICAtIFJlbW92ZSByY3VfYmFycmll
cigpIGFuZCBzeW5jaHJvbml6ZV9yY3UoKSBmcm9tIEZlbmNlQ3R4Ojpkcm9wKCkuDQogICAgRmVu
Y2VDdHggbWlnaHQgZHJvcCBpbiBhdG9taWMgY29udGV4dCwgd2hlcmUgeW91IG11c3Qgbm90IHBl
cmZvcm0NCiAgICB0aG9zZSBvcGVyYXRpb25zLiBXaXRoIHRoZSBjdXJyZW50IHdheSBDIGRtYV9m
ZW5jZSBpcyBkZXNpZ25lZCwgdGhlDQogICAgZHJpdmVyIG11c3Qgd2FpdCBmb3IgYSBncmFjZSBw
ZXJpb2QgbWFudWFsbHkgdW50aWwgaXQgdW5sb2Fkcy4NCiAgLSBSZXBhaXIgdGhlIERyaXZlckZl
bmNlQm9ycm93IGltcGxlbWVudGF0aW9uLCBwcm9wZXJseSBpbmplY3RpbmcgYQ0KICAgIGxpZmUg
dGltZSBpbnRvIGl0LiAoRGFuaWxvKQ0KICAtIEZpeCBtZW1vcnkgbGF5b3V0IGJ1ZyBmb3IgcmN1
X2hlYWQuIChPbnVyKQ0KICAtIERyb3AgUkNVIHBhdGNoZXMsIHNpbmNlIHRoaXMgc2VyaWVzIGRv
ZXNuJ3QgbmVlZCB0aGVtIGFueW1vcmUuDQoNCkNoYW5nZXMgc2luY2UgdjE6DQogIC0gUmVtb3Zl
IHVubmVjZXNzYXJ5IG11dGFibGUgcmVmZXJlbmNlcyAoQWxpY2UpDQogIC0gU3BsaXQgdXAgdW5z
YWZlIGNvbW1lbnRzIHdoZXJlIHBvc3NpYmxlIChEYW5pbG8pDQogIC0gUmVtb3ZlIFBoYW50b21E
YXRhICsgaW1wbGVtZW50IEZlbmNlQ3R4IG9wcyB0cmFpdCAoQm9yaXMpDQogIC0gQ29uc2lzdGVu
dGx5IGNhbGwgRmVuY2VDdHggZ2VuZXJpYyBkYXRhIGBUYC4gRmVuY2VEYXRhVHlwZSBpcw0KICAg
IGRlcml2ZWQgZnJvbSB0aGF0LiAoQm9yaXMpDQogIC0gQWRkIGFic3RyYWN0aW9ucyBmb3IgY2Fs
bF9yY3UoKSBhbmQgc3luY2hyb25pemVfcmN1KCkgKERhbmlsbykNCiAgLSBBZGQgRUNBTkNFTEVE
IGVycm9yIGNvZGUgaW4gUnVzdCAoQWxpY2UpDQogIC0gUmVtb3ZlIHRoZSByY3VfYmFycmllcigp
IGZyb20gRmVuY2VDdHg6OmRyb3AoKSDigJMgYmVjYXVzZSB3ZSBub3cgdXNlDQogICAgY2FsbF9y
Y3UoKSwgdGhlcmUgY2FuIGJlIG5vIFVBRiBhY2Nlc3MgdG8gdGhlIEZlbmNlQ3R4IGFueW1vcmUu
IEluDQogICAgYW55IGNhc2UsIGl0IGlzIGlsbGVnYWwgdG8gdXNlIGVpdGhlciBjYWxsX3JjdSgp
IG9yDQogICAgc3luY2hyb25pemVfcmN1KCkgaW4gRmVuY2VDdHg6OmRyb3AoKSwgYmVjYXVzZSBv
dXIgbmV3DQogICAgZHJvcF9kcml2ZXJfZmVuY2VfZGF0YSgpIGNhbiBydW4gaW4gYXRvbWljIGNv
bnRleHQgYW5kIG1pZ2h0IHB1dCB0aGUNCiAgICBsYXN0IGZlbmNlX2N0eCByZWZlcmVuY2UuDQog
ICAgU28gd2Ugbm93IG9ubHkgaGF2ZSB0byBndWFyZCBhZ2FpbnN0IG1vZHVsZSB1bmxvYWQsIHdo
aWNoIGl0IHNlZW1zDQogICAgZWl0aGVyIHRoZSBkcml2ZXIgb3IgUnVzdCBkcml2ZXItY29yZSAv
IG1vZHVsZSB1bmxvYWQgaW5mcmFzdHJ1Y3R1cmUNCiAgICBtdXN0IHNvbHZlLg0KICAtIE1pbm9y
IGZvcm1hdHRpbmcgZXRjLiBjaGFuZ2VzDQogIC0gQWRkIEMgaGVscGVycyB0byBNQUlOVEFJTkVS
Uy4gKERhbmlsbykNCiAgLSBFbnN1cmUgdGhhdCBgRmVuY2U6OmlzX3NpZ25hbGVkKClgIGlzIGZ1
bGx5IHN5bmNocm9uaXplZCwgaS5lLiwgYWxsDQogICAgY2FsbGJhY2tzIHJlYWxseSBoYXZlIHJ1
bi4gU2VlIFsxXSBhbmQgWzJdLiAoTXlzZWxmLCBDaHJpc3RpYW4NCiAgICBLw7ZuaWcpDQoNCkNo
YW5nZXMgc2luY2UgdGhlIFJGQ3M6DQogIC0gSW5jbHVkZSBzdXBwb3J0IGZvciBGb3JlaWduT3du
YWJsZSBmb3IgQVJlZiwgc28gdGhhdCBhIEZlbmNlIGNhbiBiZQ0KICAgIHN0dWZmZWQgaW50byBh
biBYQXJyYXkgZXQgYWwuIChDb2RlIGJ5IERhbmlsbykNCiAgLSBJbXBsZW1lbnQgRm9yZWlnbk93
bmFibGUgKHdpdGggbmV3IGJvcnJvdyB0eXBlKSBmb3IgRHJpdmVyRmVuY2UsIHNvDQogICAgdGhh
dCBpdCBjYW4gYmUgc3R1ZmZlZCBpbnRvIGFuIFhBcnJheS4NCiAgLSBJbmNsdWRlIHRoZSByY3U6
OlJjdUJveCBkYXRhIHR5cGUgdG8gZGVmZXIgZHJvcHBpbmcgZGF0YSB3aXRoIFJDVQ0KICAgIChD
b2R5IGJ5IEFsaWNlKQ0KICAtIFBvcnQgRG1hRmVuY2UgdG8gUmN1Qm94IHRvIG1ha2UgVUFGIGJ1
Z3MgdGhyb3VnaCBsYXRlciwgbmV3IGRtYV9mZW5jZQ0KICAgIGNhbGxiYWNrcyAoYmFja2VuZF9v
cHMpIGltcG9zc2libGUuDQogIC0gRm9yY2UgdXNlcnMgdG8gcGFzcyB0aGVpciBmZW5jZSBkYXRh
IGluIGFuIFJjdUJveCAob3IgaGF2ZSBpdCBub3QNCiAgICBuZWVkIGRyb3AoKSkgdGhyb3VnaCBh
IFNlYWxlZCB0cmFpdC4NCiAgLSBEb2N1bWVudCB0aGUgcnVsZXMgZm9yIHRoZSB1c2VyJ3MgRHJp
dmVyRmVuY2U6OmRhdGEncyBkcm9wDQogICAgaW1wbGVtZW50YXRpb24gdmVyeSBjbGVhcmx5IChk
ZWFkbG9jayBkYW5nZXIpLg0KICAtIHJ1c3RmbXQsIENsaXBweS4NCiAgLSBWYXJpb3VzIHN0eWxl
IHN1Z2dlc3Rpb25zLCBzYWZldHkgY29tbWVudHMsIGV0Yy4gKMOWbnVyKQ0KICAtIEFkZCBfX3J1
c3RfaGVscGVyIHByZWZpeCB0byBoZWxwZXIgZnVuY3Rpb25zLiAow5ZudXIpDQoNCkNoYW5nZXMg
aW4gUkZDIHYzOg0KICAtIE9taXQgSm9iUXVldWUgcGF0Y2hlcyBmb3Igbm93DQogIC0gQ29tcGxl
dGVseSByZWRlc2lnbiB0aGUgbWVtb3J5IGxheW91dDogSW5zdGVhZCBvZiBhIEZlbmNlDQogICAg
cmVmY291bnRpbmcgYSBEcml2ZXJGZW5jZSwgYm90aCBub3cgbGl2ZSBpbiB0aGUgc2FtZSBhbGxv
Y2F0aW9uIHRvDQogICAgYWxsb3cgZm9yIGZ1dHVyZSBzdXBwb3J0IHRoZSBkbWFfZmVuY2UgYmFj
a2VuZF9vcHMgY2FsbGJhY2tzIHdoaWNoDQogICAgbmVlZCB0byBkbyBjb250YWluZXJfb2YuICht
b3N0bHkgQm9yaXMncyBmZWVkYmFjaykNCiAgLSBBbGxvdyBmb3IgcHJlLWFsbG9jYXRpbmcgZmVu
Y2VzIHRvIGF2b2lkIGRlYWRsb2NrcyB3aGVuIHN1Ym1pdHRpbmcNCiAgICBqb2JzIHRvIGEgR1BV
LiAoQm9yaXMpDQogIC0gU2ltdWx0YW5lb3VzbHksIGFsbG93IGZvciBwcmUtcHJlcGFyaW5nIGZl
bmNlIGNhbGxiYWNrIG9iamVjdHMsIHNvDQogICAgdGhlIGRyaXZlciBjYW4gYWxsb2NhdGUgdGhl
bSB3aGVuIGl0IHNlZXMgZml0LiAoY29kZSBsYXJnZWx5IHN0b2xlbg0KICAgIGFuZCBpbnNwaXJl
ZCBieSBEYW5pZWwpLg0KICAtIFNpZ25hbCBmZW5jZXMgb24gZHJvcCwgZW5zdXJlIHN5bmNocm9u
aXphdGlvbi4NCiAgLSBGb3JjZSB1c2VycyB0byBzZXQgYW4gZXJyb3IgY29kZSB3aGVuIHNpZ25h
bGxpbmcuDQogIC0gV3JpdGUgbW9yZSBkb2N1bWVudGF0aW9uDQogIC0gQSB0b24gb2YgbWlub3Ig
b3RoZXIgY2hhbmdlcy4NCg0KDQpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVs
LzIwMjYwNjA4MTQyNDM2LjI2NTgyMC0yLXBoYXN0YUBrZXJuZWwub3JnLw0KWzJdIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDI2MDYxMjEwNDI1MS4yMjY0NzA3LTItcGhhc3Rh
QGtlcm5lbC5vcmcvDQoNCg0KQWxyaWdodCwgc28gc2luY2UgdGhlIGxhc3QgUkZDcyBkaWQgbm90
IHJldmVhbCBzaWduaWZpY2FudCBkZXNpZ24NCmlzc3VlcywgSSBkZWNpZGVkIHRvIHRyYW5zaXRp
b24gdGhpcyBzZXJpZXMgdG8gYSB2MSBhbmQgaG9wZSB0aGF0IHdlIGNhbg0KZ2V0IGl0IHVwc3Ry
ZWFtLg0KDQpUaGlzIG5vdyBpbmNsdWRlcyBjb2RlIGZvciBtb3JlIGNvbW1vbiBpbmZyYXN0cnVj
dHVyZSB0aGF0IGRtYV9mZW5jZQ0KbmVlZHMsIGNvbnRyaWJ1dGVkIGJ5IERhbmlsbyBhbmQgQWxp
Y2UuDQoNCi0tLQ0KDQpPbGQgY292ZXIgbGV0dGVyIGZvciBSRkM6DQoNClNvLCB0aGlzIGlzIHRo
ZSBzcGlyaXR1YWwgc3VjY2Vzc29yIG9mIHRoZSBmaXJzdCAvIHNlY29uZCBSRkMgWzFdLiB2Mg0K
YWxzbyBjb250YWluZWQgY29kZSBmb3IgZHJtOjpKb2JRdWV1ZSwgYnV0IG1vc3RseSB0byBzaG93
IGhvdyB0aGUgZmVuY2UNCmNvZGUgd291bGQgYmUgdXNlZC4gSm9iUXVldWUgaXMgdW5kZXIgaGVh
dnkgcmV3b3JrIHJpZ2h0IG5vdywgc28gSSBkb24ndA0Kd2FudCB0byBib3RoZXIgeW91ciBleWVz
IHdpdGggaXQuIFRoZSBkb2NzdHJpbmcgZXhhbXBsZXMgc2hvdWxkIHNob3cgaG93DQpSdXN0IGZl
bmNlcyBhcmUgc3VwcG9zZWQgdG8gYmUgdXNlZCwgdGhvdWdoLg0KDQpUaGlzIHYzIGNvbnRhaW5z
IGEgaHVnZSBhbW91bnQgb2YgaGlnaGx5IHZhbHVhYmxlIGZlZWRiYWNrIGZyb20gYQ0KdmFyaWV0
eSBvZiBwZW9wbGUsIG5vdGFibHkgQm9yaXMsIGJ1dCBhbHNvIGZyb20gQWxpY2UsIEdhcnkgYW5k
IERhbmlsby4NCg0KVGhlcmUgYXJlIHNvbWUgVE9ET3Mgb3BlbiAoYSBiZXR0ZXIgdHJhaXQgZm9y
IGZlbmNlIGJhY2tlbmRfb3BzIGFuZCBSQ1UNCnN1cHBvcnQpLCBidXQgbXkgaG9wZSBpcyB0aGF0
IHRoaXMgZWZmb3J0IGlzIG5vdyBmaW5hbGx5IGFwcHJvYWNoaW5nIGl0cw0KZW5kLg0KDQpJIHdv
dWxkIGdyZWF0bHkgYXBwcmVjaWF0ZSBmZWVkYmFjayBhbmQgZXNwZWNpYWxseSBtb3JlIGluZm9y
bWF0aW9uDQphYm91dCB3aGF0IG1pZ2h0IGJlIG1pc3NpbmcgdG8gbWFrZSB0aGlzIHVzYWJsZSwg
d2hpY2ggaXMgb2J2aW91c2x5DQp3aGVyZSBEYW5pZWwncyBhbmQgQm9yaXMncyBmZWVkYmFjayB3
aWxsIGJlIHZhbHVhYmxlIG9uY2UgbW9yZS4NCg0KUGxlYXNlIHJlZ2FyZCB0aGlzIHBhdGNoIGp1
c3QgYXMgd2hhdCBpdCdzIHRpdGxlZDogYW4gUkZDLCB0byBkaXNjdXNzIGENCmJpdCBtb3JlIGFu
ZCB0byBpbmZvcm0gYSBicm9hZGVyIGNvbW11bml0eSBhYm91dCB3aGF0IHRoZSBjdXJyZW50IHN0
YXRlDQppcyBhbmQgd2hlcmUgdGhpcyBpcyBoZWFkaW5nIGF0Lg0KDQpNYW55IHJlZ2FyZHMsDQpQ
aGlsaXBwDQoNClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9ydXN0LWZvci1saW51eC8yMDI2
MDIwMzA4MTQwMy42ODczMy0yLXBoYXN0YUBrZXJuZWwub3JnLw0KDQpEYW5pbG8gS3J1bW1yaWNo
ICgxKToNCiAgcnVzdDogdHlwZXM6IGltcGxlbWVudCBGb3JlaWduT3duYWJsZSBmb3IgQVJlZjxU
Pg0KDQpQaGlsaXBwIFN0YW5uZXIgKDMpOg0KICBydXN0OiBlcnJvcjogQWRkIEVDQU5DRUxFRCBl
cnJvciBjb2RlDQogIHJ1c3Q6IEFkZCBkbWFfZmVuY2UgYWJzdHJhY3Rpb25zDQogIE1BSU5UQUlO
RVJTOiBBZGQgZW50cnkgZm9yIFJ1c3QgZG1hLWJ1Zg0KDQogTUFJTlRBSU5FUlMgICAgICAgICAg
ICAgICAgICAgICAgfCAgIDMgKw0KIHJ1c3QvYmluZGluZ3MvYmluZGluZ3NfaGVscGVyLmggIHwg
ICAxICsNCiBydXN0L2hlbHBlcnMvZG1hX2ZlbmNlLmMgICAgICAgICB8ICA0OCArKw0KIHJ1c3Qv
aGVscGVycy9oZWxwZXJzLmMgICAgICAgICAgIHwgICAxICsNCiBydXN0L2tlcm5lbC9kbWFfYnVm
L2RtYV9mZW5jZS5ycyB8IDg1MiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQogcnVz
dC9rZXJuZWwvZG1hX2J1Zi9tb2QucnMgICAgICAgfCAgMTQgKw0KIHJ1c3Qva2VybmVsL2Vycm9y
LnJzICAgICAgICAgICAgIHwgICAxICsNCiBydXN0L2tlcm5lbC9saWIucnMgICAgICAgICAgICAg
ICB8ICAgMSArDQogcnVzdC9rZXJuZWwvc3luYy9hcmVmLnJzICAgICAgICAgfCAgMzkgKysNCiA5
IGZpbGVzIGNoYW5nZWQsIDk2MCBpbnNlcnRpb25zKCspDQogY3JlYXRlIG1vZGUgMTAwNjQ0IHJ1
c3QvaGVscGVycy9kbWFfZmVuY2UuYw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBydXN0L2tlcm5lbC9k
bWFfYnVmL2RtYV9mZW5jZS5ycw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBydXN0L2tlcm5lbC9kbWFf
YnVmL21vZC5ycw0KDQoNCmJhc2UtY29tbWl0OiA4NDhiZjU3ZTk4ZTE2NzhjZTdhNDllYjRlMGJm
MDUwMmRhOTVkYzA3DQotLSANCjIuNTQuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
