Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tingIB1hPWrx2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:10:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 035E66C7B9C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:10:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20201202 header.b=uELMjqwE;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28B1644941
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:10:52 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 2A1AA3F99D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jun 2026 12:59:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 95E54443C5;
	Thu, 25 Jun 2026 12:59:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D90C2BCC9;
	Thu, 25 Jun 2026 12:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782392387;
	bh=mO7H6CxT0xr+TQeP349f5rakbVigIjKs7/5ZqaY0c0M=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=uELMjqwEc9cuNIZ9EZXe417st4SjO8Eqjfufuo4TNIS42GumU3HjMtRc1om7aVi29
	 2+xxquT4GkhO+EZgPUv+a0ELnDTYJQ6+mF+cmik1ZhoHTaEFl3Qbj6s5wXeAo5DN01
	 bpN923Jns0yOVJ4q9xr2jve+LbnlADFLH8kAnQJmqks/GcHeGiCdCRWm3F5chlYJgn
	 ieMfWf+YPwc56ExhaMzkzU4Jjd3mg8a/dw311QVSxaM82qpWb+HYqQmwMeoHlHu95U
	 1CBklZ/8IfpZu+JAbD+B2zVA+pTIvta2NJmnmEkImc8E8bbNAsXmnJe6a+HpEv4zyJ
	 jlIz23rvzwU5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED16CDE007;
	Thu, 25 Jun 2026 12:59:47 +0000 (UTC)
From: Bryam Vargas via B4 Relay <devnull+hexlabsecurity.proton.me@kernel.org>
Date: Thu, 25 Jun 2026 07:59:47 -0500
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20260625-b4-disp-a9216ef0-v2-1-4819401e7086@proton.me>
X-B4-Tracking: v=1; b=H4sIAEImPWoC/x3MPQqAMAxA4atIZgMx1fpzFXGoNtUsKi2IIN7d4
 vgN7z2QJKokGIoHolya9NgzuCxg2dy+CqrPBia2ZLnBuUav6UTXc2UlEHqynWmNC4EayNkZJej
 9L8fpfT8en+qmYgAAAA==
To: =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Gerd Hoffmann <kraxel@redhat.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782392386; l=5019;
 i=hexlabsecurity@proton.me; s=proton; h=from:subject:message-id;
 bh=0aLxTibrMJBplO9IaIusxbrB77zTe9eUcVQQojgli4k=;
 b=zfW2oXU7nK7VvHH7SPh3ROeiAWU/E6kCQj/YLWII1KAa1frlENS4D3ORc9JKoaiwI2Ubu1rR8
 HfvM7IB5/FGBP7MJr09SzYCaFkTDbxlxphHNAX+6fwPF72Xrklv+JOO
X-Developer-Key: i=hexlabsecurity@proton.me; a=ed25519;
 pk=dmppBMZNLLoPzxHi9l8tZDzEZUunPbgsYqIZYXeUrL0=
X-Endpoint-Received: by B4 Relay for hexlabsecurity@proton.me/proton with
 auth_id=814
X-Original-From: Bryam Vargas <hexlabsecurity@proton.me>
X-Spamd-Bar: -------
X-MailFrom: devnull+hexlabsecurity.proton.me@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PFECXZJ2EXVB56QWFIKGSV5TTS2BUC5W
X-Message-ID-Hash: PFECXZJ2EXVB56QWFIKGSV5TTS2BUC5W
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:28 +0000
CC: linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Gurchetan Singh <gurchetansingh@chromium.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: hexlabsecurity@proton.me
Subject: [Linaro-mm-sig] [PATCH v2] udmabuf: serialize the sg_table cache under the reservation lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PFECXZJ2EXVB56QWFIKGSV5TTS2BUC5W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:kraxel@redhat.com,m:linux-kernel@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:gurchetansingh@chromium.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de,hexlabsecurity.proton.me];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[hexlabsecurity@proton.me];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[proton.me:replyto,proton.me:email,proton.me:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 035E66C7B9C

RnJvbTogQnJ5YW0gVmFyZ2FzIDxoZXhsYWJzZWN1cml0eUBwcm90b24ubWU+DQoNCmJlZ2luX2Nw
dV91ZG1hYnVmKCkgYnVpbGRzIGFuZCBjYWNoZXMgdWJ1Zi0+c2cgd2l0aCBhbiB1bnNlcmlhbGlz
ZWQNCmNoZWNrLXRoZW4tc2V0LCBhbmQgZW5kX2NwdV91ZG1hYnVmKCkgcmVhZHMgdGhlIHNhbWUg
ZmllbGQgdW5sb2NrZWQuIFRoZQ0KY29yZSBpbnZva2VzIGJvdGggY3B1LWFjY2VzcyBob29rcyB3
aXRob3V0IGhvbGRpbmcgdGhlIHJlc2VydmF0aW9uIGxvY2sgYW5kDQpETUFfQlVGX0lPQ1RMX1NZ
TkMgaXMgdW5sb2NrZWQsIHNvIGNvbmN1cnJlbnQgU1lOQyBpb2N0bHMgb24gYSBzaGFyZWQNCnVk
bWFidWYgZmQgcmFjZSBvbiB1YnVmLT5zZzogdHdvIGJlZ2lucyBjYW4gYm90aCBvYnNlcnZlIE5V
TEwgYW5kIGJvdGggY2FsbA0KZ2V0X3NnX3RhYmxlKCksIGFuZCB0aGUgbGF0ZXIgc3RvcmUgb3Jw
aGFucyB0aGUgZWFybGllciB0YWJsZSBhbmQgaXRzIERNQQ0KbWFwcGluZywgd2hpY2ggcmVsZWFz
ZV91ZG1hYnVmKCkgbmV2ZXIgZnJlZXMuIEVhY2ggd29uIHJhY2UgcGVybWFuZW50bHkNCmxlYWtz
IGFuIHNnX3RhYmxlIGFuZCBhbiB1bmJhbGFuY2VkIERNQSBtYXBwaW5nLg0KDQpTZXJpYWxpemUg
Ym90aCBob29rcyB1bmRlciB0aGUgYnVmZmVyJ3MgcmVzZXJ2YXRpb24gbG9jaywgYXMgcGFuZnJv
c3QgYW5kDQpwYW50aG9yIGRvLiBUYWtlIGl0IGludGVycnVwdGlibHk6IHRoZSBsb2NrIGNhbiBi
ZSBoZWxkIGFjcm9zcyBhIHdhaXQgZm9yDQpoYXJkd2FyZSB0byBmaW5pc2gsIHNvIGFuIHVuaW50
ZXJydXB0aWJsZSBhY3F1aXJlIHdvdWxkIHBhcmsgYSBTWU5DDQppb2N0bCBpbiBUQVNLX1VOSU5U
RVJSVVBUSUJMRS4gZG1hX2J1Zl9iZWdpbi9lbmRfY3B1X2FjY2VzcygpIGFscmVhZHkNCmFubm90
YXRlIG1pZ2h0X2xvY2soKSBvbiB0aGF0IGxvY2ssIHNvIHRha2luZyBpdCBoZXJlIG1hdGNoZXMg
dGhlDQpkb2N1bWVudGVkIGNvbnRyYWN0LiBTaW5nbGUtdGhyZWFkZWQgY2FsbGVycyBhcmUgdW5h
ZmZlY3RlZC4NCg0KRml4ZXM6IDI4NDU2MmUxZjM0OCAoInVkbWFidWY6IGltcGxlbWVudCBiZWdp
bl9jcHVfYWNjZXNzL2VuZF9jcHVfYWNjZXNzIGhvb2tzIikNCkNjOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnDQpTaWduZWQtb2ZmLWJ5OiBCcnlhbSBWYXJnYXMgPGhleGxhYnNlY3VyaXR5QHByb3Rv
bi5tZT4NCi0tLQ0KdjI6IFRha2UgdGhlIHJlc2VydmF0aW9uIGxvY2sgaW50ZXJydXB0aWJseSAo
ZG1hX3Jlc3ZfbG9ja19pbnRlcnJ1cHRpYmxlKCkpDQogICAgaW4gYm90aCBob29rcyBpbnN0ZWFk
IG9mIHRoZSB1bmludGVycnVwdGlibGUgZG1hX3Jlc3ZfbG9jaygpLCBhbmQgcmV0dXJuDQogICAg
dGhlIGVycm9yOyB0aGUgbG9jayBjYW4gYmUgaGVsZCBhY3Jvc3MgYSB3YWl0IGZvciBoYXJkd2Fy
ZSB0byBmaW5pc2gsIHNvDQogICAgYW4gdW5pbnRlcnJ1cHRpYmxlIGFjcXVpcmUgY291bGQgcGFy
ayBhIFNZTkMgaW9jdGwgaW4NCiAgICBUQVNLX1VOSU5URVJSVVBUSUJMRS4gV2l0aCBhIE5VTEwg
d3dfYWNxdWlyZV9jdHggdGhlIGNhbGwgcmV0dXJucyBvbmx5IDANCiAgICBvciAtRUlOVFIsIHNv
IGEgc2luZ2xlIGVycm9yIGNoZWNrIGlzIGVub3VnaC4gKENocmlzdGlhbiBLw7ZuaWcpDQp2MTog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNjI1LWI0LWRpc3AtNjdkMWYzZGItdjEt
MS1hNDdmYjllZGFiOWVAcHJvdG9uLm1lLw0KDQpTYW1lIGxlYWstd2l0aC1kYW5nbGluZy1wb2lu
dGVyIGNsYXNzIGFzIENWRS0yMDI0LTU2NzEyIChleHBvcnRfdWRtYWJ1ZigpDQplcnJvciBwYXRo
KSAtLSBhIGRpc3RpbmN0IHNpdGUgdGhlIDIwMjQgZml4IGRvZXMgbm90IGNvdmVyLg0KDQp1ZG1h
YnVmIGlzIHRoZSBvbmx5IGV4cG9ydGVyIHRoYXQgbGF6aWx5IGJ1aWxkcyBpdHMgc2dfdGFibGUg
Y2FjaGUgaW5zaWRlIHRoZQ0KY3B1LWFjY2VzcyBob29rIHdpdGhvdXQgc2VyaWFsaXNpbmcgdGhl
IGNoZWNrLXRoZW4tc2V0LiBUaGUgZXhwb3J0ZXJzIHRoYXQgZG8NCmNvbXBhcmFibGUgaW4taG9v
ayBjYWNoZSB3b3JrIGFsbCB0YWtlIGEgbG9jayBmaXJzdDogcGFuZnJvc3QgYW5kIHBhbnRob3IN
CmRtYV9yZXN2X2xvY2soKSAoYm90aCBob29rcyksIG9tYXBkcm0gb21hcF9vYmotPmxvY2sgYXJv
dW5kIGl0cyBsYXp5IHBhZ2UtZ2V0LA0KdGhlIGRtYS1oZWFwcyBidWZmZXItPmxvY2ssIGFuZCB0
aGUgVFRNL0dFTSBleHBvcnRlcnMgKGFtZGdwdSwgaTkxNSwgeGUpIHRoZWlyDQpvYmplY3QncyBy
ZXNlcnZhdGlvbiBsb2NrLiB0ZWdyYSBhbmQgdmlkZW9idWYyIHRha2Ugbm8gbG9jayBoZXJlIGJl
Y2F1c2UgdGhleQ0Kb25seSBzeW5jIGFuIHNnX3RhYmxlIGJ1aWx0IGVhcmxpZXIsIHNvIHRoZXJl
IGlzIG5vdGhpbmcgdG8gc2VyaWFsaXNlLg0KDQpDb25maXJtZWQgd2l0aCBhbiBvdXQtb2YtdHJl
ZSBBL0IgZXhlcmNpc2luZyB0aGUgYmVnaW4vYmVnaW4gcmFjZTogdGhpcyBkcml2ZXINCmJ1aWx0
IGFzIGEgbW9kdWxlIHdpdGggZ2V0X3NnX3RhYmxlKCkvcHV0X3NnX3RhYmxlKCkgY291bnRpbmcg
YWxsb2NhdGlvbnMNCmFnYWluc3QgZnJlZXMsIGRyaXZlbiBieSBhIHVzZXJzcGFjZSByYWNlciB0
aGF0IGNyZWF0ZXMgMzAwMCB1ZG1hYnVmcyBhbmQgZmlyZXMNCkRNQV9CVUZfSU9DVExfU1lOQyhT
WU5DX1NUQVJUKSBmcm9tIE4gdGhyZWFkcyBvbiBlYWNoIHNoYXJlZCBmZC4gVGhlIGxvY2sNCnNl
cmlhbGlzZXMgdGhlIGNoZWNrLXRoZW4tc2V0IGlkZW50aWNhbGx5IHdoZXRoZXIgaXQgaXMgdGFr
ZW4gaW50ZXJydXB0aWJseSBvcg0Kbm90OyB0aGUgcnVuIGJlbG93IHVzZWQgdGhlIHJlc2VydmF0
aW9uIGxvY2s6DQoNCiAgYXJtICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxlYWtlZCBzZ190
YWJsZXMgKG9mIDMwMDAgYnVmZmVycykNCiAgdnVsbmVyYWJsZSwgNCB0aHJlYWRzICAgICAgICAg
IDQ3NjENCiAgY29udHJvbCwgMSB0aHJlYWQgICAgICAgICAgICAgIDANCiAgcGF0Y2hlZCAocmVz
diBsb2NrKSwgNCB0aHJlYWRzIDANCg0KT25lIHNnX3RhYmxlIGFuZCBpdHMgRE1BIG1hcHBpbmcg
bGVhayBwZXIgd29uIHJhY2U7IHRoZSBzaW5nbGUtdGhyZWFkIGNvbnRyb2wNCmRvZXMgbm90IGxl
YWssIGlzb2xhdGluZyB0aGUgcmFjZTsgd2l0aCB0aGUgbG9jayB0aGUgbGF6eS1pbml0IHJ1bnMg
b25jZSBwZXINCmJ1ZmZlciAoMzAwMCBhbGxvY2F0aW9ucywgemVybyBsZWFrZWQpLiBlbmRfY3B1
X3VkbWFidWYoKSBpcyBsb2NrZWQgZm9yIHRoZQ0Kc2FtZSBmaWVsZCB0b286IGFuIHVubG9ja2Vk
IGVuZCBjb3VsZCBvdGhlcndpc2Ugb2JzZXJ2ZSB0aGUgdHJhbnNpZW50IElTX0VSUg0Kc3RvcmUg
YmVnaW4gbWFrZXMgYmVmb3JlIHJlc2V0dGluZyB1YnVmLT5zZyB0byBOVUxMLCBhbmQgZGVyZWZl
cmVuY2UgaXQuIEluIGENCnRpZ2h0ZXIgNTAwMC1pdGVyYXRpb24gbG9vcCB0aGUgdW5wYXRjaGVk
IGxlYWsgcnVucyBhcm91bmQgMTUtMjAgTUIvcyBvZiBzbGFiLg0KLS0tDQogZHJpdmVycy9kbWEt
YnVmL3VkbWFidWYuYyB8IDIwICsrKysrKysrKysrKysrKysrLS0tDQogMSBmaWxlIGNoYW5nZWQs
IDE3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2RtYS1idWYvdWRtYWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYw0KaW5kZXggYmNl
ZDQyMWMwZDY1Li5kNmExMzdmMGRlMWYgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvdWRt
YWJ1Zi5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQpAQCAtMjI2LDYgKzIyNiwx
MCBAQCBzdGF0aWMgaW50IGJlZ2luX2NwdV91ZG1hYnVmKHN0cnVjdCBkbWFfYnVmICpidWYsDQog
CXN0cnVjdCBkZXZpY2UgKmRldiA9IHVidWYtPmRldmljZS0+dGhpc19kZXZpY2U7DQogCWludCBy
ZXQgPSAwOw0KIA0KKwlyZXQgPSBkbWFfcmVzdl9sb2NrX2ludGVycnVwdGlibGUoYnVmLT5yZXN2
LCBOVUxMKTsNCisJaWYgKHJldCkNCisJCXJldHVybiByZXQ7DQorDQogCWlmICghdWJ1Zi0+c2cp
IHsNCiAJCXVidWYtPnNnID0gZ2V0X3NnX3RhYmxlKGRldiwgYnVmLCBkaXJlY3Rpb24pOw0KIAkJ
aWYgKElTX0VSUih1YnVmLT5zZykpIHsNCkBAIC0yMzgsNiArMjQyLDggQEAgc3RhdGljIGludCBi
ZWdpbl9jcHVfdWRtYWJ1ZihzdHJ1Y3QgZG1hX2J1ZiAqYnVmLA0KIAkJZG1hX3N5bmNfc2d0YWJs
ZV9mb3JfY3B1KGRldiwgdWJ1Zi0+c2csIGRpcmVjdGlvbik7DQogCX0NCiANCisJZG1hX3Jlc3Zf
dW5sb2NrKGJ1Zi0+cmVzdik7DQorDQogCXJldHVybiByZXQ7DQogfQ0KIA0KQEAgLTI0NiwxMiAr
MjUyLDIwIEBAIHN0YXRpYyBpbnQgZW5kX2NwdV91ZG1hYnVmKHN0cnVjdCBkbWFfYnVmICpidWYs
DQogew0KIAlzdHJ1Y3QgdWRtYWJ1ZiAqdWJ1ZiA9IGJ1Zi0+cHJpdjsNCiAJc3RydWN0IGRldmlj
ZSAqZGV2ID0gdWJ1Zi0+ZGV2aWNlLT50aGlzX2RldmljZTsNCisJaW50IHJldCA9IDA7DQorDQor
CXJldCA9IGRtYV9yZXN2X2xvY2tfaW50ZXJydXB0aWJsZShidWYtPnJlc3YsIE5VTEwpOw0KKwlp
ZiAocmV0KQ0KKwkJcmV0dXJuIHJldDsNCiANCiAJaWYgKCF1YnVmLT5zZykNCi0JCXJldHVybiAt
RUlOVkFMOw0KKwkJcmV0ID0gLUVJTlZBTDsNCisJZWxzZQ0KKwkJZG1hX3N5bmNfc2d0YWJsZV9m
b3JfZGV2aWNlKGRldiwgdWJ1Zi0+c2csIGRpcmVjdGlvbik7DQogDQotCWRtYV9zeW5jX3NndGFi
bGVfZm9yX2RldmljZShkZXYsIHVidWYtPnNnLCBkaXJlY3Rpb24pOw0KLQlyZXR1cm4gMDsNCisJ
ZG1hX3Jlc3ZfdW5sb2NrKGJ1Zi0+cmVzdik7DQorDQorCXJldHVybiByZXQ7DQogfQ0KIA0KIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgdWRtYWJ1Zl9vcHMgPSB7DQoNCi0tLQ0KYmFz
ZS1jb21taXQ6IDdlZWQxZmIxNzk1OWU3MjEwMzE1NTVlNWI1NjU0MDgzZmU2YTdkMDINCmNoYW5n
ZS1pZDogMjAyNjA2MjUtYjQtZGlzcC1hOTIxNmVmMC1kMDY4MzczYWZmMDUNCg0KQmVzdCByZWdh
cmRzLA0KLS0gDQpCcnlhbSBWYXJnYXMgPGhleGxhYnNlY3VyaXR5QHByb3Rvbi5tZT4NCg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
