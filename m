Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nVksL3plR2q4XgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 09:32:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C4D6FF931
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 09:32:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=AVp3M63D;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 629CF404DD
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Jul 2026 07:32:08 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 139BE3F789
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Jul 2026 07:31:57 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A83136001A;
	Fri,  3 Jul 2026 07:31:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D0321F000E9;
	Fri,  3 Jul 2026 07:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783063916;
	bh=/Q35Kz8rnHTlztuEzAc6H/zjCpTCgNlLgkoLPJocPqU=;
	h=From:To:Cc:Subject:Date;
	b=AVp3M63DD0e95DW4tUg0nqz5ICrc11z0qwfLukiLelal34W6eQierdGmwrQDFgPD/
	 w0M+TJhceHu0d/jIAA66j/dPKUUFlRM3uV0LyT1gg0z4njponE5dUG+KWEdfVecXmg
	 OzhkfS3+rAe/gHByPCeXpNfdFeDa8pyD4wX7LjAZ7tm6F3lVr6GrCiFR3zeqDuYsds
	 TnxLov5SP01NK7Io0eyYfydzZzz8/tXblQCo++S3qOVH50wUsAntCm3Syi47lWlRVG
	 wA8OdFkJIbwpmsDeLnbgzDkyXO3CugnK7uSs/+e3/3y6LS93Prx4LramSeDdUH/cfn
	 PaoIPvjCK9G1A==
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
	Asahi Lina <lina+kernel@asahilina.net>,
	Burak Emir <bqe@google.com>,
	Lorenzo Stoakes <ljs@kernel.org>,
	Joel Fernandes <joelagnelf@nvidia.com>,
	Alexandre Courbot <acourbot@nvidia.com>,
	Krishna Ketan Rai <prafulrai522@gmail.com>,
	Tamir Duberstein <tamird@kernel.org>,
	Mirko Adzic <adzicmirko97@gmail.com>,
	Alistair Francis <alistair.francis@wdc.com>,
	=?UTF-8?q?Onur=20=C3=96zkan?= <work@onurozkan.dev>,
	Shankari Anand <shankari.ak0208@gmail.com>
Date: Fri,  3 Jul 2026 09:31:36 +0200
Message-ID: <20260703073141.3962604-2-phasta@kernel.org>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-Spamd-Bar: -----
Message-ID-Hash: ORSO4HW2XQMLDSNEUNHEW7TY5RYZBIZ6
X-Message-ID-Hash: ORSO4HW2XQMLDSNEUNHEW7TY5RYZBIZ6
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 0/5] rust / dma_buf: Add abstractions for dma_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ORSO4HW2XQMLDSNEUNHEW7TY5RYZBIZ6/>
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
	FORGED_RECIPIENTS(0.00)[m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:phasta@kernel.org,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina+kernel@asahilina.net,m:bqe@google.com,m:ljs@kernel.org,m:joelagnelf@nvidia.com,m:acourbot@nvidia.com,m:prafulrai522@gmail.com,m:tamird@kernel.org,m:adzicmirko97@gmail.com,m:alistair.francis@wdc.com,m:work@onurozkan.dev,m:shankari.ak0208@gmail.com,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:lina@asahilina.net,m:shankariak0208@gmail.com,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[30];
	FREEMAIL_TO(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,collabora.com,linuxfoundation.org,asahilina.net,nvidia.com,gmail.com,wdc.com,onurozkan.dev];
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
X-Rspamd-Queue-Id: 99C4D6FF931

Q2hhbmdlcyBzaW5jZSB2NDoNCiAgLSBGaXggYW4gdW5pbml0aWFsaXplZCBtZW1vcnkgYnVnIGZv
ciBGZW5jZUNiUmVnaXN0cmF0aW9uIHdpdGgNCiAgICBNYW51YWxseURyb3AuDQogIC0gUmV0dXJu
IEZlbmNlQ3R4IGFzIGltcGwgUGluSW5pdA0KICAtIE1ha2UgRmVuY2VDdHggcmV0dXJuIGFuIGlt
cGwgUGluSW5pdDxULCBFcnJvcj4gKERhbmlsbykNCiAgLSBSZWZvcm1hdCBzb21lIGNvbW1lbnRz
DQogIC0gQWRqdXN0IHRoZSBkb2N1IGZvciByY3VfYmFycmllcigpLCBzbyB0aGF0IGl0IG1hdGNo
ZXMgdGhlIEMgc2lkZSdzDQogICAgZG9jdSBhbmQgb3VyIGRvY3UgZm9yIHJjdTo6c3luY2hyb25p
emVfcmN1KCkuDQoNCkNoYW5nZXMgc2luY2UgdjM6DQogIC0gQWRkIGEgRklYTUUgZm9yIGFuIGVu
Y291bnRlcmVkIFJ1c3QgY29tcGlsZXIgYnVnLiAoR2FyeSkNCiAgLSBBZGQgbmV3IFJ1c3QgZmls
ZXMgYWxzbyB0byBEUk0gZHJpdmVycyAmIGNvbW1vbiBpbmZyYXN0cnVjdHVyZQ0KICAgIE1BSU5U
QUlORVJTIGZpbGUuIChEYW5pbG8pDQogIC0gUmVwb3NpdGlvbiBFQ0FOQ0VMRUQgZXJyb3IgY29k
ZS4gKE1pZ3VlbCkNCiAgLSBSZXBsYWNlIHJlZmNvdW50ZWQgRmVuY2VDdHggaW4gRHJpdmVyRmVu
Y2VEYXRhIHdpdGggYSByZWZlcmVuY2UgcGx1cw0KICAgIGxpZmUgdGltZS4gKEJvcmlzKQ0KICAt
IFJlLWFkZCByY3VfYmFycmllcigpIHBhdGNoLCBzaW5jZSB3ZSBub3cgY2FuIHVzZSBpdCBmb3Ig
ZHJvcHBpbmcgdGhlDQogICAgZmVuY2UgY29udGV4dC4gKERhbmlsbykNCiAgLSBBZGQgZm9yZ290
dGVuIFItYiBmcm9tIEFsaWNlLCBhbmQgQWNrcyBmb3IgTUFJTlRBSU5FUlMgZnJvbQ0KICAgIENo
cmlzdGlhbiBhbmQgU3VtaXQuDQoNCkNoYW5nZXMgc2luY2UgdjI6DQogIC0gRG9uJ3QgZHJvcCBE
cml2ZXJGZW5jZURhdGEgYXMgYSB3aG9sZSwgYnV0IG9ubHkgdGhlIG1lbWJlcnMgd2UNCiAgICBy
ZWFsbHkgd2FudCB0byBkcm9wLiBHaXZlcyBtb3JlIHJvYnVzdG5lc3MuIChHYXJ5KS4NCiAgLSBC
cmVhayBhcGFydCBsYXJnZSBwaW5faW5pdF9mcm9tX2Nsb3N1cmUoKS4gKERhbmlsbywgT251cikN
CiAgLSBSZW1vdmUgcmN1X2JhcnJpZXIoKSBhbmQgc3luY2hyb25pemVfcmN1KCkgZnJvbSBGZW5j
ZUN0eDo6ZHJvcCgpLg0KICAgIEZlbmNlQ3R4IG1pZ2h0IGRyb3AgaW4gYXRvbWljIGNvbnRleHQs
IHdoZXJlIHlvdSBtdXN0IG5vdCBwZXJmb3JtDQogICAgdGhvc2Ugb3BlcmF0aW9ucy4gV2l0aCB0
aGUgY3VycmVudCB3YXkgQyBkbWFfZmVuY2UgaXMgZGVzaWduZWQsIHRoZQ0KICAgIGRyaXZlciBt
dXN0IHdhaXQgZm9yIGEgZ3JhY2UgcGVyaW9kIG1hbnVhbGx5IHVudGlsIGl0IHVubG9hZHMuDQog
IC0gUmVwYWlyIHRoZSBEcml2ZXJGZW5jZUJvcnJvdyBpbXBsZW1lbnRhdGlvbiwgcHJvcGVybHkg
aW5qZWN0aW5nIGENCiAgICBsaWZlIHRpbWUgaW50byBpdC4gKERhbmlsbykNCiAgLSBGaXggbWVt
b3J5IGxheW91dCBidWcgZm9yIHJjdV9oZWFkLiAoT251cikNCiAgLSBEcm9wIFJDVSBwYXRjaGVz
LCBzaW5jZSB0aGlzIHNlcmllcyBkb2Vzbid0IG5lZWQgdGhlbSBhbnltb3JlLg0KDQpDaGFuZ2Vz
IHNpbmNlIHYxOg0KICAtIFJlbW92ZSB1bm5lY2Vzc2FyeSBtdXRhYmxlIHJlZmVyZW5jZXMgKEFs
aWNlKQ0KICAtIFNwbGl0IHVwIHVuc2FmZSBjb21tZW50cyB3aGVyZSBwb3NzaWJsZSAoRGFuaWxv
KQ0KICAtIFJlbW92ZSBQaGFudG9tRGF0YSArIGltcGxlbWVudCBGZW5jZUN0eCBvcHMgdHJhaXQg
KEJvcmlzKQ0KICAtIENvbnNpc3RlbnRseSBjYWxsIEZlbmNlQ3R4IGdlbmVyaWMgZGF0YSBgVGAu
IEZlbmNlRGF0YVR5cGUgaXMNCiAgICBkZXJpdmVkIGZyb20gdGhhdC4gKEJvcmlzKQ0KICAtIEFk
ZCBhYnN0cmFjdGlvbnMgZm9yIGNhbGxfcmN1KCkgYW5kIHN5bmNocm9uaXplX3JjdSgpIChEYW5p
bG8pDQogIC0gQWRkIEVDQU5DRUxFRCBlcnJvciBjb2RlIGluIFJ1c3QgKEFsaWNlKQ0KICAtIFJl
bW92ZSB0aGUgcmN1X2JhcnJpZXIoKSBmcm9tIEZlbmNlQ3R4Ojpkcm9wKCkg4oCTIGJlY2F1c2Ug
d2Ugbm93IHVzZQ0KICAgIGNhbGxfcmN1KCksIHRoZXJlIGNhbiBiZSBubyBVQUYgYWNjZXNzIHRv
IHRoZSBGZW5jZUN0eCBhbnltb3JlLiBJbg0KICAgIGFueSBjYXNlLCBpdCBpcyBpbGxlZ2FsIHRv
IHVzZSBlaXRoZXIgY2FsbF9yY3UoKSBvcg0KICAgIHN5bmNocm9uaXplX3JjdSgpIGluIEZlbmNl
Q3R4Ojpkcm9wKCksIGJlY2F1c2Ugb3VyIG5ldw0KICAgIGRyb3BfZHJpdmVyX2ZlbmNlX2RhdGEo
KSBjYW4gcnVuIGluIGF0b21pYyBjb250ZXh0IGFuZCBtaWdodCBwdXQgdGhlDQogICAgbGFzdCBm
ZW5jZV9jdHggcmVmZXJlbmNlLg0KICAgIFNvIHdlIG5vdyBvbmx5IGhhdmUgdG8gZ3VhcmQgYWdh
aW5zdCBtb2R1bGUgdW5sb2FkLCB3aGljaCBpdCBzZWVtcw0KICAgIGVpdGhlciB0aGUgZHJpdmVy
IG9yIFJ1c3QgZHJpdmVyLWNvcmUgLyBtb2R1bGUgdW5sb2FkIGluZnJhc3RydWN0dXJlDQogICAg
bXVzdCBzb2x2ZS4NCiAgLSBNaW5vciBmb3JtYXR0aW5nIGV0Yy4gY2hhbmdlcw0KICAtIEFkZCBD
IGhlbHBlcnMgdG8gTUFJTlRBSU5FUlMuIChEYW5pbG8pDQogIC0gRW5zdXJlIHRoYXQgYEZlbmNl
Ojppc19zaWduYWxlZCgpYCBpcyBmdWxseSBzeW5jaHJvbml6ZWQsIGkuZS4sIGFsbA0KICAgIGNh
bGxiYWNrcyByZWFsbHkgaGF2ZSBydW4uIFNlZSBbMV0gYW5kIFsyXS4gKE15c2VsZiwgQ2hyaXN0
aWFuDQogICAgS8O2bmlnKQ0KDQpDaGFuZ2VzIHNpbmNlIHRoZSBSRkNzOg0KICAtIEluY2x1ZGUg
c3VwcG9ydCBmb3IgRm9yZWlnbk93bmFibGUgZm9yIEFSZWYsIHNvIHRoYXQgYSBGZW5jZSBjYW4g
YmUNCiAgICBzdHVmZmVkIGludG8gYW4gWEFycmF5IGV0IGFsLiAoQ29kZSBieSBEYW5pbG8pDQog
IC0gSW1wbGVtZW50IEZvcmVpZ25Pd25hYmxlICh3aXRoIG5ldyBib3Jyb3cgdHlwZSkgZm9yIERy
aXZlckZlbmNlLCBzbw0KICAgIHRoYXQgaXQgY2FuIGJlIHN0dWZmZWQgaW50byBhbiBYQXJyYXku
DQogIC0gSW5jbHVkZSB0aGUgcmN1OjpSY3VCb3ggZGF0YSB0eXBlIHRvIGRlZmVyIGRyb3BwaW5n
IGRhdGEgd2l0aCBSQ1UNCiAgICAoQ29keSBieSBBbGljZSkNCiAgLSBQb3J0IERtYUZlbmNlIHRv
IFJjdUJveCB0byBtYWtlIFVBRiBidWdzIHRocm91Z2ggbGF0ZXIsIG5ldyBkbWFfZmVuY2UNCiAg
ICBjYWxsYmFja3MgKGJhY2tlbmRfb3BzKSBpbXBvc3NpYmxlLg0KICAtIEZvcmNlIHVzZXJzIHRv
IHBhc3MgdGhlaXIgZmVuY2UgZGF0YSBpbiBhbiBSY3VCb3ggKG9yIGhhdmUgaXQgbm90DQogICAg
bmVlZCBkcm9wKCkpIHRocm91Z2ggYSBTZWFsZWQgdHJhaXQuDQogIC0gRG9jdW1lbnQgdGhlIHJ1
bGVzIGZvciB0aGUgdXNlcidzIERyaXZlckZlbmNlOjpkYXRhJ3MgZHJvcA0KICAgIGltcGxlbWVu
dGF0aW9uIHZlcnkgY2xlYXJseSAoZGVhZGxvY2sgZGFuZ2VyKS4NCiAgLSBydXN0Zm10LCBDbGlw
cHkuDQogIC0gVmFyaW91cyBzdHlsZSBzdWdnZXN0aW9ucywgc2FmZXR5IGNvbW1lbnRzLCBldGMu
ICjDlm51cikNCiAgLSBBZGQgX19ydXN0X2hlbHBlciBwcmVmaXggdG8gaGVscGVyIGZ1bmN0aW9u
cy4gKMOWbnVyKQ0KDQpDaGFuZ2VzIGluIFJGQyB2MzoNCiAgLSBPbWl0IEpvYlF1ZXVlIHBhdGNo
ZXMgZm9yIG5vdw0KICAtIENvbXBsZXRlbHkgcmVkZXNpZ24gdGhlIG1lbW9yeSBsYXlvdXQ6IElu
c3RlYWQgb2YgYSBGZW5jZQ0KICAgIHJlZmNvdW50aW5nIGEgRHJpdmVyRmVuY2UsIGJvdGggbm93
IGxpdmUgaW4gdGhlIHNhbWUgYWxsb2NhdGlvbiB0bw0KICAgIGFsbG93IGZvciBmdXR1cmUgc3Vw
cG9ydCB0aGUgZG1hX2ZlbmNlIGJhY2tlbmRfb3BzIGNhbGxiYWNrcyB3aGljaA0KICAgIG5lZWQg
dG8gZG8gY29udGFpbmVyX29mLiAobW9zdGx5IEJvcmlzJ3MgZmVlZGJhY2spDQogIC0gQWxsb3cg
Zm9yIHByZS1hbGxvY2F0aW5nIGZlbmNlcyB0byBhdm9pZCBkZWFkbG9ja3Mgd2hlbiBzdWJtaXR0
aW5nDQogICAgam9icyB0byBhIEdQVS4gKEJvcmlzKQ0KICAtIFNpbXVsdGFuZW91c2x5LCBhbGxv
dyBmb3IgcHJlLXByZXBhcmluZyBmZW5jZSBjYWxsYmFjayBvYmplY3RzLCBzbw0KICAgIHRoZSBk
cml2ZXIgY2FuIGFsbG9jYXRlIHRoZW0gd2hlbiBpdCBzZWVzIGZpdC4gKGNvZGUgbGFyZ2VseSBz
dG9sZW4NCiAgICBhbmQgaW5zcGlyZWQgYnkgRGFuaWVsKS4NCiAgLSBTaWduYWwgZmVuY2VzIG9u
IGRyb3AsIGVuc3VyZSBzeW5jaHJvbml6YXRpb24uDQogIC0gRm9yY2UgdXNlcnMgdG8gc2V0IGFu
IGVycm9yIGNvZGUgd2hlbiBzaWduYWxsaW5nLg0KICAtIFdyaXRlIG1vcmUgZG9jdW1lbnRhdGlv
bg0KICAtIEEgdG9uIG9mIG1pbm9yIG90aGVyIGNoYW5nZXMuDQoNCg0KWzFdIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDI2MDYwODE0MjQzNi4yNjU4MjAtMi1waGFzdGFAa2Vy
bmVsLm9yZy8NClsyXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyNjA2MTIx
MDQyNTEuMjI2NDcwNy0yLXBoYXN0YUBrZXJuZWwub3JnLw0KDQoNCkFscmlnaHQsIHNvIHNpbmNl
IHRoZSBsYXN0IFJGQ3MgZGlkIG5vdCByZXZlYWwgc2lnbmlmaWNhbnQgZGVzaWduDQppc3N1ZXMs
IEkgZGVjaWRlZCB0byB0cmFuc2l0aW9uIHRoaXMgc2VyaWVzIHRvIGEgdjEgYW5kIGhvcGUgdGhh
dCB3ZSBjYW4NCmdldCBpdCB1cHN0cmVhbS4NCg0KVGhpcyBub3cgaW5jbHVkZXMgY29kZSBmb3Ig
bW9yZSBjb21tb24gaW5mcmFzdHJ1Y3R1cmUgdGhhdCBkbWFfZmVuY2UNCm5lZWRzLCBjb250cmli
dXRlZCBieSBEYW5pbG8gYW5kIEFsaWNlLg0KDQotLS0NCg0KT2xkIGNvdmVyIGxldHRlciBmb3Ig
UkZDOg0KDQpTbywgdGhpcyBpcyB0aGUgc3Bpcml0dWFsIHN1Y2Nlc3NvciBvZiB0aGUgZmlyc3Qg
LyBzZWNvbmQgUkZDIFsxXS4gdjINCmFsc28gY29udGFpbmVkIGNvZGUgZm9yIGRybTo6Sm9iUXVl
dWUsIGJ1dCBtb3N0bHkgdG8gc2hvdyBob3cgdGhlIGZlbmNlDQpjb2RlIHdvdWxkIGJlIHVzZWQu
IEpvYlF1ZXVlIGlzIHVuZGVyIGhlYXZ5IHJld29yayByaWdodCBub3csIHNvIEkgZG9uJ3QNCndh
bnQgdG8gYm90aGVyIHlvdXIgZXllcyB3aXRoIGl0LiBUaGUgZG9jc3RyaW5nIGV4YW1wbGVzIHNo
b3VsZCBzaG93IGhvdw0KUnVzdCBmZW5jZXMgYXJlIHN1cHBvc2VkIHRvIGJlIHVzZWQsIHRob3Vn
aC4NCg0KVGhpcyB2MyBjb250YWlucyBhIGh1Z2UgYW1vdW50IG9mIGhpZ2hseSB2YWx1YWJsZSBm
ZWVkYmFjayBmcm9tIGENCnZhcmlldHkgb2YgcGVvcGxlLCBub3RhYmx5IEJvcmlzLCBidXQgYWxz
byBmcm9tIEFsaWNlLCBHYXJ5IGFuZCBEYW5pbG8uDQoNClRoZXJlIGFyZSBzb21lIFRPRE9zIG9w
ZW4gKGEgYmV0dGVyIHRyYWl0IGZvciBmZW5jZSBiYWNrZW5kX29wcyBhbmQgUkNVDQpzdXBwb3J0
KSwgYnV0IG15IGhvcGUgaXMgdGhhdCB0aGlzIGVmZm9ydCBpcyBub3cgZmluYWxseSBhcHByb2Fj
aGluZyBpdHMNCmVuZC4NCg0KSSB3b3VsZCBncmVhdGx5IGFwcHJlY2lhdGUgZmVlZGJhY2sgYW5k
IGVzcGVjaWFsbHkgbW9yZSBpbmZvcm1hdGlvbg0KYWJvdXQgd2hhdCBtaWdodCBiZSBtaXNzaW5n
IHRvIG1ha2UgdGhpcyB1c2FibGUsIHdoaWNoIGlzIG9idmlvdXNseQ0Kd2hlcmUgRGFuaWVsJ3Mg
YW5kIEJvcmlzJ3MgZmVlZGJhY2sgd2lsbCBiZSB2YWx1YWJsZSBvbmNlIG1vcmUuDQoNClBsZWFz
ZSByZWdhcmQgdGhpcyBwYXRjaCBqdXN0IGFzIHdoYXQgaXQncyB0aXRsZWQ6IGFuIFJGQywgdG8g
ZGlzY3VzcyBhDQpiaXQgbW9yZSBhbmQgdG8gaW5mb3JtIGEgYnJvYWRlciBjb21tdW5pdHkgYWJv
dXQgd2hhdCB0aGUgY3VycmVudCBzdGF0ZQ0KaXMgYW5kIHdoZXJlIHRoaXMgaXMgaGVhZGluZyBh
dC4NCg0KTWFueSByZWdhcmRzLA0KUGhpbGlwcA0KDQpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvcnVzdC1mb3ItbGludXgvMjAyNjAyMDMwODE0MDMuNjg3MzMtMi1waGFzdGFAa2VybmVsLm9y
Zy8NCg0KRGFuaWxvIEtydW1tcmljaCAoMSk6DQogIHJ1c3Q6IHR5cGVzOiBpbXBsZW1lbnQgRm9y
ZWlnbk93bmFibGUgZm9yIEFSZWY8VD4NCg0KUGhpbGlwcCBTdGFubmVyICg0KToNCiAgcnVzdDog
ZXJyb3I6IEFkZCBFQ0FOQ0VMRUQgZXJyb3IgY29kZQ0KICBydXN0OiBzeW5jOiBBZGQgYWJzdHJh
Y3Rpb24gZm9yIHJjdV9iYXJyaWVyKCkNCiAgcnVzdDogQWRkIGRtYV9mZW5jZSBhYnN0cmFjdGlv
bnMNCiAgTUFJTlRBSU5FUlM6IEFkZCBlbnRyeSBmb3IgUnVzdCBkbWEtYnVmDQoNCiBNQUlOVEFJ
TkVSUyAgICAgICAgICAgICAgICAgICAgICB8ICAgNSArDQogcnVzdC9iaW5kaW5ncy9iaW5kaW5n
c19oZWxwZXIuaCAgfCAgIDEgKw0KIHJ1c3QvaGVscGVycy9kbWFfZmVuY2UuYyAgICAgICAgIHwg
IDQ4ICsrDQogcnVzdC9oZWxwZXJzL2hlbHBlcnMuYyAgICAgICAgICAgfCAgIDEgKw0KIHJ1c3Qv
a2VybmVsL2RtYV9idWYvZG1hX2ZlbmNlLnJzIHwgODk0ICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysNCiBydXN0L2tlcm5lbC9kbWFfYnVmL21vZC5ycyAgICAgICB8ICAxNCArDQogcnVz
dC9rZXJuZWwvZXJyb3IucnMgICAgICAgICAgICAgfCAgIDEgKw0KIHJ1c3Qva2VybmVsL2xpYi5y
cyAgICAgICAgICAgICAgIHwgICAxICsNCiBydXN0L2tlcm5lbC9zeW5jL2FyZWYucnMgICAgICAg
ICB8ICA0MCArKw0KIHJ1c3Qva2VybmVsL3N5bmMvcmN1LnJzICAgICAgICAgIHwgIDIwICsNCiAx
MCBmaWxlcyBjaGFuZ2VkLCAxMDI1IGluc2VydGlvbnMoKykNCiBjcmVhdGUgbW9kZSAxMDA2NDQg
cnVzdC9oZWxwZXJzL2RtYV9mZW5jZS5jDQogY3JlYXRlIG1vZGUgMTAwNjQ0IHJ1c3Qva2VybmVs
L2RtYV9idWYvZG1hX2ZlbmNlLnJzDQogY3JlYXRlIG1vZGUgMTAwNjQ0IHJ1c3Qva2VybmVsL2Rt
YV9idWYvbW9kLnJzDQoNCg0KYmFzZS1jb21taXQ6IGE3M2EzOThhNjhjYTliOWU1MTE2YTYxNzU2
MjQ3MWYxNmI4MzEwYzQNCi0tIA0KMi41NC4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
