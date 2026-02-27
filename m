Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id XHY1CU3ooGndnwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 01:41:49 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5FC1B1444
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 01:41:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A7883F9BB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 00:41:47 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BFDF3F70A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 00:41:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: hamtonbecky@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Fri, 27 Feb 2026 00:41:40 -0000
Message-ID: <177215290063.3988244.8486158071394867848@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: W3BI5RXZIHXK6IX27UREMTTEVKEDC3OB
X-Message-ID-Hash: W3BI5RXZIHXK6IX27UREMTTEVKEDC3OB
X-MailFrom: hamtonbecky@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Fake Investment Platforms: Anatomy of a Rug Pull Scam
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W3BI5RXZIHXK6IX27UREMTTEVKEDC3OB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hamtonbecky@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_NO_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,lists.linaro.org:mid,crypterachainsignals.com:url,crypterachainsignals.com:email,linaro.org:email]
X-Rspamd-Queue-Id: AA5FC1B1444
X-Rspamd-Action: no action

RmFrZSBJbnZlc3RtZW50IFBsYXRmb3JtczogQW5hdG9teSBvZiBhIFJ1ZyBQdWxsIFNjYW0NClNj
YW1tZXJzIGxhdW5jaCBib2d1cyB0cmFkaW5nL2ludmVzdG1lbnQgc2l0ZXMgcHJvbWlzaW5nIGd1
YXJhbnRlZWQgcmV0dXJucywgdGhlbiB2YW5pc2ggd2l0aCBkZXBvc2l0cy4NCjEuIEx1cmluZyBW
aWN0aW1zDQpBZHMgb24gc29jaWFsIG1lZGlhIG9yIFRlbGVncmFtIHByb21vdGUgIkFJIHRyYWRp
bmcgYm90cyIgb3IgImV4Y2x1c2l2ZSBmdW5kcy4iDQoNClZpY3RpbXMgc2lnbiB1cCBhbmQgZGVw
b3NpdCBjcnlwdG8gdmlhIHByb3ZpZGVkIHdhbGxldHMuDQoNCjIuIENvbnRyb2xsZWQgRW52aXJv
bm1lbnQNCkZha2UgaW50ZXJmYWNlcyBzaG93IHJpc2luZyBiYWxhbmNlcyB0byBlbmNvdXJhZ2Ug
bW9yZSBpbnZlc3RtZW50Lg0KDQpXaXRoZHJhd2FscyBibG9ja2VkIHdpdGggZXhjdXNlcyAoInRh
eGVzLCIgInZlcmlmaWNhdGlvbiIpLg0KDQozLiBUaGUgRXhpdCBTY2FtDQpXaGVuIGVub3VnaCBm
dW5kcyBhY2N1bXVsYXRlOg0KDQpTaXRlIGdvZXMgb2ZmbGluZS4NCkZ1bmRzIHRyYW5zZmVycmVk
IG91dCByYXBpZGx5Lg0KDQo0LiBPYmZ1c2NhdGlvbiAmIENhc2gtT3V0DQpTaW1pbGFyIHRvIG90
aGVyIHNjYW1zOiBzcGxpdHRpbmcsIG1peGluZywgY2hhaW4taG9wcGluZywgdGhlbiBleGNoYW5n
ZSBmaWF0IG9mZi1yYW1wcy4NCldoZXJlIFRyYWNpbmcgQ2FuIEludGVydmVuZQ0KTWFueSBwbGF0
Zm9ybXMgdXNlIHRyYWNlYWJsZSBwYXR0ZXJucyAoZS5nLiwgcmVwZWF0ZWQgZGVwb3NpdCBhZGRy
ZXNzZXMpLg0KDQpFYXJseSBBbGVydHM6IE1vbml0b3IgZm9yIHN1ZGRlbiBvdXRmbG93cy4NCkNs
dXN0ZXJpbmc6IEdyb3VwIHJlbGF0ZWQgd2FsbGV0cyB0byByZXZlYWwgb3BlcmF0b3JzLg0KTGVn
YWwgTGV2ZXJhZ2U6IEV2aWRlbmNlIHN1cHBvcnRzIGNpdmlsIG9yIGNyaW1pbmFsIGFjdGlvbi4N
Cg0KQ3J5cHRlcmEgQ2hhaW4gU2lnbmFscyAoQ0NTKSBhbmFseXplcyB0aGVzZSBwbGF0Zm9ybXMn
IHRyYW5zYWN0aW9uIGhpc3RvcmllcywgdHJhY2VzIHRvIGV4Y2hhbmdlcywgYW5kIHN1cHBvcnRz
IHJlY292ZXJ5IGVmZm9ydHMgd2l0aCBkZXRhaWxlZCByZXBvcnRzIGFuZCBwYXJ0bmVyc2hpcHMu
DQpGb3IgaGVscCB3aXRoIGZha2UgaW52ZXN0bWVudCBzY2FtcywgaGVhZCB0byBodHRwczovL3d3
dy5jcnlwdGVyYWNoYWluc2lnbmFscy5jb20vIG9yIGNvbnRhY3QgaW5mb0BjcnlwdGVyYWNoYWlu
c2lnbmFscy5jb20uDQpSZXNlYXJjaCBwbGF0Zm9ybXMgdGhvcm91Z2hseeKAlGNoZWNrIGF1ZGl0
cywgdGVhbSB0cmFuc3BhcmVuY3ksIGFuZCBjb21tdW5pdHkgZmVlZGJhY2suDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
