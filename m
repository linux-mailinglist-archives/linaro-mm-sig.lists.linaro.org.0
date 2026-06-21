Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NdMkAo1nN2pNNQcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 06:24:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D196AA2FA
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 06:24:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=hidingmail.net (policy=reject);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6163B40AD5
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 04:24:43 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1FBE40499
	for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Jun 2026 04:24:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: boring.crane.wymi@hidingmail.net
To: linaro-mm-sig@lists.linaro.org
Date: Sun, 21 Jun 2026 04:24:37 -0000
Message-ID: <178201587772.2475155.12557115406154069465@lists.linaro.org>
User-Agent: HyperKitty on http://lists-ec2.96boards.org/
Message-ID-Hash: IB7SDLUXQP6NOJNHUQOUL4UGXA2IRSRK
X-Message-ID-Hash: IB7SDLUXQP6NOJNHUQOUL4UGXA2IRSRK
X-MailFrom: boring.crane.wymi@hidingmail.net
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Your Guide to Running a Primate-Powered Paradise
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IB7SDLUXQP6NOJNHUQOUL4UGXA2IRSRK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: add header
X-Spamd-Result: default: False [12.89 / 15.00];
	SPAM_FLAG(5.00)[];
	ABUSE_SURBL(5.00)[hidingmail.net:from_mime];
	DMARC_POLICY_REJECT(2.00)[hidingmail.net : SPF not aligned (relaxed), No valid DKIM,reject];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[boring.crane.wymi@hidingmail.net,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[boring.crane.wymi@hidingmail.net,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NO_DN(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	R_SPF_ALLOW(0.00)[+mx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 77D196AA2FA
X-Spam: Yes

RXZlciBkcmVhbXQgb2YgcnVubmluZyB5b3VyIG93biBidXN0bGluZyBzdXBlcm1hcmtldCwgYnV0
IHdpdGggYSBkZWxpZ2h0ZnVsIHNpbWlhbiB0d2lzdD8gTG9vayBubyBmdXJ0aGVyIHRoYW4gTW9u
a2V5IE1hcnQsIGEgY2hhcm1pbmcgYW5kIHN1cnByaXNpbmdseSBhZGRpY3RpdmUgbWFuYWdlbWVu
dCBnYW1lIHRoYXTigJlzIHBlcmZlY3QgZm9yIGEgcXVpY2sgcGljay1tZS11cCBvciBhIGxlbmd0
aHkgcGxheSBzZXNzaW9uLiBUaGlzIGRlbGlnaHRmdWwgdGl0bGUgb2ZmZXJzIGEgdW5pcXVlIGJs
ZW5kIG9mIGZhcm1pbmcsIGNyYWZ0aW5nLCBhbmQgZW50cmVwcmVuZXVyaWFsIHNwaXJpdCwgYWxs
IHdyYXBwZWQgdXAgaW4gYW4gYWRvcmFibGUgcGl4ZWwgYXJ0IHBhY2thZ2UuIExldOKAmXMgZGl2
ZSBpbnRvIHdoYXQgbWFrZXMgTW9ua2V5IE1hcnQgc3VjaCBhIGpveSB0byBleHBlcmllbmNlLiBo
dHRwczovL21vbmtleW1hcnRmcmVlLmNvbQ0KV2VsY29tZSB0byB0aGUgSnVuZ2xlIEFpc2xlOiBJ
bnRyb2R1Y3Rpb24gdG8gTW9ua2V5IE1hcnQNCk1vbmtleSBNYXJ0IGlzbid0IGp1c3QgYW5vdGhl
ciBjbGlja2VyIGdhbWU7IGl0J3MgYSB2aWJyYW50IGVjb3N5c3RlbSB3aGVyZSBtb25rZXlzIGFy
ZSB0aGUgZmFybWVycywgdGhlIGNyYWZ0c3Blb3BsZSwgYW5kIHRoZSBjYXNoaWVycy4gWW91ciBn
b2FsIGlzIHNpbXBsZTogZ3JvdyBhIHZhcmlldHkgb2YgY3JvcHMsIHByb2Nlc3MgdGhlbSBpbnRv
IHNlbGxhYmxlIGdvb2RzLCBhbmQga2VlcCB5b3VyIGN1c3RvbWVycyBoYXBweSwgYWxsIHdoaWxl
IGV4cGFuZGluZyB5b3VyIG1vbmtleSBlbXBpcmUuIFRoZSBnYW1lIGlzIGluY3JlZGlibHkgYWNj
ZXNzaWJsZSwgbWFraW5nIGl0IHN1aXRhYmxlIGZvciBwbGF5ZXJzIG9mIGFsbCBhZ2VzIGFuZCBl
eHBlcmllbmNlIGxldmVscy4gV2hldGhlciB5b3UncmUgYSBzZWFzb25lZCBnYW1lciBvciBqdXN0
IGxvb2tpbmcgZm9yIGEgcmVsYXhpbmcgd2F5IHRvIHVud2luZCwgTW9ua2V5IE1hcnQgb2ZmZXJz
IGEgcmV3YXJkaW5nIGFuZCBlbmdhZ2luZyBleHBlcmllbmNlLiBZb3UgY2FuIGVhc2lseSBmaW5k
IHlvdXJzZWxmIGltbWVyc2VkIGluIHRoaXMgY2hhcm1pbmcgd29ybGQgYnkgdmlzaXRpbmcgdGhl
IG9mZmljaWFsIGdhbWUgYXTCoE1vbmtleSBNYXJ0Lg0KQSBEYXkgaW4gdGhlIExpZmUgb2YgYSBN
b25rZXkgTW9ndWw6IFVuZGVyc3RhbmRpbmcgdGhlIEdhbWVwbGF5DQpUaGUgY29yZSBnYW1lcGxh
eSBsb29wIG9mIE1vbmtleSBNYXJ0IGlzIGRlY2VwdGl2ZWx5IHNpbXBsZSB5ZXQgZW5kbGVzc2x5
IGVuZ2FnaW5nLiBZb3Ugc3RhcnQgd2l0aCBhIHNtYWxsIHBsb3Qgb2YgbGFuZCBhbmQgYSBzaW5n
bGUgbW9ua2V5LiBQbGFudCBiYW5hbmFzLCBoYXJ2ZXN0IHRoZW0sIGFuZCB0aGVuIGhhdmUgeW91
ciBtb25rZXkgc3RvY2sgdGhlIHNoZWx2ZXMuIEFzIHlvdSBlYXJuIG1vbmV5IGZyb20gc2FsZXMs
IHlvdSBjYW4gdW5sb2NrIG5ldyBjcm9wcyBsaWtlIGNvcm4gYW5kIGNvZmZlZSwgYW5kIG1vcmUg
aW1wb3J0YW50bHksIG5ldyBwcm9jZXNzaW5nIHN0YXRpb25zLiBUaGlzIGlzIHdoZXJlIHRoZSBt
YWdpYyBoYXBwZW5zISBCYW5hbmFzIGNhbiBiZSB0dXJuZWQgaW50byBiYW5hbmEgc21vb3RoaWVz
LCBjb2ZmZWUgYmVhbnMgaW50byBzdGVhbWluZyBjdXBzIG9mIGpvZSwgYW5kIGNvcm4gaW50byBw
b3Bjb3JuLiBFYWNoIG5ldyBwcm9kdWN0IG9wZW5zIHVwIG5ldyByZXZlbnVlIHN0cmVhbXMgYW5k
IGRlbWFuZHMgYSBtb3JlIGludHJpY2F0ZSBwcm9kdWN0aW9uIGxpbmUuDQpTb29uLCB5b3UnbGwg
YmUgaGlyaW5nIG1vcmUgbW9ua2V5cywgZWFjaCBzcGVjaWFsaXppbmcgaW4gYSBkaWZmZXJlbnQg
dGFzazogcGxhbnRpbmcsIGhhcnZlc3RpbmcsIHByb2Nlc3NpbmcsIG9yIGNhc2hpZXJpbmcuIFRo
ZSBnYW1lIGVuY291cmFnZXMgc3RyYXRlZ2ljIHBsYWNlbWVudCBvZiB5b3VyIG1vbmtleXMgYW5k
IHN0YXRpb25zIHRvIG9wdGltaXplIGVmZmljaWVuY3kuIFdhdGNoIGFzIHlvdXIgbGl0dGxlIHBy
aW1hdGUgdGVhbSBzY3VycmllcyBhcm91bmQsIGRpbGlnZW50bHkgd29ya2luZyB0byBrZWVwIHlv
dXIgbWFydCB0aHJpdmluZy4gVXBncmFkaW5nIHlvdXIgc3RhdGlvbnMgYW5kIG1vbmtleXMgaXMg
Y3J1Y2lhbCBmb3IgaW5jcmVhc2luZyBwcm9kdWN0aW9uIHNwZWVkIGFuZCBjYXBhY2l0eSwgYWxs
b3dpbmcgeW91IHRvIHNlcnZlIG1vcmUgY3VzdG9tZXJzIGFuZCBleHBhbmQgeW91ciBpbnZlbnRv
cnkuDQpUaXBzIGZvciBhIFRocml2aW5nIFRyb3BpY2FsIE1hcnQ6IE1hc3RlcmluZyB0aGUgTWVj
aGFuaWNzDQpUbyB0cnVseSBleGNlbCBpbiBNb25rZXkgTWFydCwgYSBmZXcgc3RyYXRlZ2llcyBj
YW4gaGVscC4gRmlyc3RseSzCoHByaW9yaXRpemUgdXBncmFkZXMuIEludmVzdGluZyBpbiBmYXN0
ZXIgaGFydmVzdGVycyBvciBtb3JlIGVmZmljaWVudCBwcm9jZXNzb3JzIGVhcmx5IG9uIHdpbGwg
c2lnbmlmaWNhbnRseSBib29zdCB5b3VyIGluY29tZS4gU2Vjb25kbHkswqBiYWxhbmNlIHlvdXIg
Y3JvcCBwcm9kdWN0aW9uLiBEb24ndCBwdXQgYWxsIHlvdXIgYmFuYW5hcyBpbiBvbmUgYmFza2V0
ISBEaXZlcnNpZnkgeW91ciBjcm9wcyB0byBvZmZlciBhIHdpZGVyIHJhbmdlIG9mIHByb2R1Y3Rz
IGFuZCBhcHBlYWwgdG8gbW9yZSBjdXN0b21lcnMuIFRoaXJkbHkswqBvcHRpbWl6ZSB5b3VyIGxh
eW91dC4gR3JvdXAgc2ltaWxhciBzdGF0aW9ucyB0b2dldGhlciBhbmQgZW5zdXJlIHlvdXIgbW9u
a2V5cyBoYXZlIGNsZWFyIHBhdGhzIHRvIG1pbmltaXplIHRyYXZlbCB0aW1lLiBFeHBlcmltZW50
IHdpdGggZGlmZmVyZW50IGFycmFuZ2VtZW50cyB0byBmaW5kIHdoYXQgd29ya3MgYmVzdCBmb3Ig
eW91ciBncm93aW5nIG1hcnQuIEZpbmFsbHkswqBkb24ndCBmb3JnZXQgeW91ciBjYXNoaWVycyHC
oEEgbG9uZyBsaW5lIG9mIHdhaXRpbmcgY3VzdG9tZXJzIG1lYW5zIGxvc3QgcmV2ZW51ZSwgc28g
ZW5zdXJlIHlvdSBoYXZlIGVub3VnaCBtb25rZXlzIGF0IHRoZSBjaGVja291dC4NCkNvbmNsdXNp
b246IE1vcmUgVGhhbiBKdXN0IGEgR2FtZSwgSXQncyBhIE1vbmtleSBNZXRyb3BvbGlzIQ0KTW9u
a2V5IE1hcnQgaXMgbW9yZSB0aGFuIGp1c3QgYSB0aW1lLWtpbGxlcjsgaXTigJlzIGEgZGVsaWdo
dGZ1bCBzaW11bGF0aW9uIHRoYXQgcmV3YXJkcyBwbGFubmluZywgZWZmaWNpZW5jeSwgYW5kIGEg
dG91Y2ggb2YgZW50cmVwcmVuZXVyaWFsIHNwaXJpdC4gSXRzIGNoYXJtaW5nIHZpc3VhbHMsIGlu
dHVpdGl2ZSBjb250cm9scywgYW5kIHNhdGlzZnlpbmcgcHJvZ3Jlc3Npb24gc3lzdGVtIG1ha2Ug
aXQgYSB0cnVseSBlbmpveWFibGUgZXhwZXJpZW5jZS4gV2hldGhlciB5b3UncmUgbG9va2luZyB0
byB1bndpbmQgd2l0aCBhIGNhc3VhbCBnYW1lIG9yIGRlbHZlIGludG8gYSBkZWVwZXIgbWFuYWdl
bWVudCBjaGFsbGVuZ2UsIE1vbmtleSBNYXJ0IG9mZmVycyBhIHJlZnJlc2hpbmcgYW5kIGVuZGVh
cmluZyBqb3VybmV5IGludG8gdGhlIHdvcmxkIG9mIHByaW1hdGUtcG93ZXJlZCByZXRhaWwuIFNv
LCBwdXQgb24geW91ciBtYW5hZ2VyaWFsIGhhdCwgZ2F0aGVyIHlvdXIgbW9ua2V5IGNyZXcsIGFu
ZCBnZXQgcmVhZHkgdG8gYnVpbGQgdGhlIG1vc3Qgc3VjY2Vzc2Z1bCBtb25rZXkgbWFydCB0aGUg
anVuZ2xlIGhhcyBldmVyIHNlZW4hDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
