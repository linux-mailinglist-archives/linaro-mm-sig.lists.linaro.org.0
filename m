Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHWGOLbTuGkpjwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Mar 2026 05:08:22 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B1D2A3761
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Mar 2026 05:08:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A3AF3F910
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Mar 2026 04:08:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B927C3F8E8
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 04:08:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: careful.earthworm.usil@hidingmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Tue, 17 Mar 2026 04:08:15 -0000
Message-ID: <177372049575.3447271.1709752408539271999@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: 2AAGCOVAO3TO2UAVG3IH6NVRZMVF2KCY
X-Message-ID-Hash: 2AAGCOVAO3TO2UAVG3IH6NVRZMVF2KCY
X-MailFrom: careful.earthworm.usil@hidingmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Shred Some Slopes: Getting the Hang of Snow Rider 3D
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2AAGCOVAO3TO2UAVG3IH6NVRZMVF2KCY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[hidingmail.com : SPF not aligned (relaxed), No valid DKIM,reject];
	MID_RHS_MATCH_TO(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.546];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[snowriderfree.com:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[careful.earthworm.usil@hidingmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	R_DKIM_NA(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Queue-Id: 72B1D2A3761
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

RmVlbGluZyB0aGUgbmVlZCBmb3Igc3BlZWQgYW5kIGEgYml0IG9mIHdpbnRlciBmdW4sIGV2ZW4g
d2hlbiB0aGUgd2VhdGhlciBvdXRzaWRlIGlzIGZyaWdodGZ1bD8gVGhlbiBtYXliZSBpdOKAmXMg
dGltZSB0byBjaGVjayBvdXQgU25vdyBSaWRlciAzRC4gVGhpcyBzaW1wbGUgYnV0IHN1cnByaXNp
bmdseSBhZGRpY3RpdmUgZ2FtZSBvZmZlcnMgYSB0aHJpbGwgb2YgZG93bmhpbGwgc2tpaW5nIGFu
ZCBzbm93Ym9hcmRpbmcgcmlnaHQgZnJvbSB5b3VyIGJyb3dzZXIsIG5vIGRvd25sb2FkcyByZXF1
aXJlZC4gTGV04oCZcyBicmVhayBkb3duIGhvdyB0byBqdW1wIGluIGFuZCBzdGFydCBlbmpveWlu
ZyB0aGlzIHN1cnByaXNpbmdseSBlbmdhZ2luZyB0aXRsZS4NCg0KaHR0cHM6Ly9zbm93cmlkZXJm
cmVlLmNvbS8NCg0KR2FtZXBsYXk6IFNpbXBsZSBDb250cm9scywgRW5kbGVzcyBQb3NzaWJpbGl0
aWVzDQpUaGUgY29yZSBnYW1lcGxheSBvZiBTbm93IFJpZGVyIDNEIGlzIGRlY2VwdGl2ZWx5IHN0
cmFpZ2h0Zm9yd2FyZC4gWW91IGNvbnRyb2wgeW91ciBjaGFyYWN0ZXIncyBkaXJlY3Rpb24gdXNp
bmcgdGhlIGxlZnQgYW5kIHJpZ2h0IGFycm93IGtleXMgKG9yIEEgYW5kIEQpLiBZb3VyIG9iamVj
dGl2ZT8gTmF2aWdhdGUgdGhyb3VnaCBhIHNlcmllcyBvZiBwcm9jZWR1cmFsbHkgZ2VuZXJhdGVk
IHNsb3BlcyBsaXR0ZXJlZCB3aXRoIG9ic3RhY2xlcy4gVGhlc2Ugb2JzdGFjbGVzIHJhbmdlIGZy
b20gc2ltcGxlIHJhbXBzIGFuZCByYWlscyB0byBtb3JlIGNoYWxsZW5naW5nIGhhemFyZHMgbGlr
ZSB0cmVlcywgc25vd2RyaWZ0cywgYW5kIGV2ZW4gYWJhbmRvbmVkIHNoYWNrcy4NClRoZSBiZWF1
dHkgb2YgU25vdyBSaWRlciAzRCBsaWVzIGluIGl0cyBwaHlzaWNzLiBXaGlsZSBzaW1wbGUsIHRo
ZXkgZmVlbCBzdXJwcmlzaW5nbHkgcmVhbGlzdGljLiBZb3UnbGwgbmVlZCB0byBhbnRpY2lwYXRl
IHR1cm5zLCBhZGp1c3QgeW91ciBzcGVlZCwgYW5kIHRpbWUgeW91ciBqdW1wcyB0byBzdWNjZXNz
ZnVsbHkgbmF2aWdhdGUgdGhlIHRlcnJhaW4uIEEgY3Jhc2ggd2lsbCByZXNldCB5b3UgdG8gdGhl
IGJlZ2lubmluZyBvZiB0aGUgY291cnNlLCBzbyBwcmVjaXNpb24gYW5kIHBhdGllbmNlIGFyZSBr
ZXkuDQpUaGUgZ2FtZSBvZmZlcnMgZGlmZmVyZW50IGxldmVscywgZWFjaCBwcmVzZW50aW5nIGEg
dW5pcXVlIGNoYWxsZW5nZS4gU29tZSBmb2N1cyBvbiBzcGVlZCBhbmQgbG9uZyBqdW1wcywgd2hp
bGUgb3RoZXJzIGRlbWFuZCBza2lsbGZ1bCBtYW5ldXZlcmluZyB0aHJvdWdoIHRpZ2h0IHNwYWNl
cy4gQXMgeW91IHByb2dyZXNzLCB5b3UgdW5sb2NrIG5ldyBza2lucyBhbmQgc2xlZHMsIGFkZGlu
ZyBhIHRvdWNoIG9mIGN1c3RvbWl6YXRpb24gdG8geW91ciBleHBlcmllbmNlLiBUaGluayBvZiBp
dCBhcyBhIGNhc3VhbCB0aW1lLWtpbGxlciB0aGF0IGNhbiBxdWlja2x5IHR1cm4gaW50byBhbiBo
b3VyLWxvbmcgb2JzZXNzaW9uIQ0KVGlwcyBmb3IgTWFzdGVyaW5nIHRoZSBNb3VudGFpbjoNCkFs
cmlnaHQsIHNvIHlvdSdyZSByZWFkeSB0byBoaXQgdGhlIHNsb3Blcy4gSGVyZSBhcmUgYSBmZXcg
dGlwcyB0byBoZWxwIHlvdSBpbXByb3ZlIHlvdXIgcnVucyBhbmQgYXZvaWQgdGhvc2UgZnJ1c3Ry
YXRpbmcgd2lwZW91dHM6DQpQcmFjdGljZSBNYWtlcyBQZXJmZWN0OiBEb24ndCBnZXQgZGlzY291
cmFnZWQgYnkgZWFybHkgY3Jhc2hlcy4gVGhlIG1vcmUgeW91IHBsYXksIHRoZSBiZXR0ZXIgeW91
J2xsIHVuZGVyc3RhbmQgdGhlIHBoeXNpY3MgYW5kIGxlYXJuIHRvIGFudGljaXBhdGUgdGhlIHRl
cnJhaW4uDQpNYXN0ZXIgdGhlIFR1cm5zOiBTbW9vdGgsIGNvbnRyb2xsZWQgdHVybnMgYXJlIGVz
c2VudGlhbCBmb3IgbWFpbnRhaW5pbmcgc3BlZWQgYW5kIGF2b2lkaW5nIG9ic3RhY2xlcy4gUHJh
Y3RpY2UgZmVhdGhlcmluZyB0aGUgYXJyb3cga2V5cyB0byBtYWtlIHN1YnRsZSBhZGp1c3RtZW50
cy4NClRpbWluZyBpcyBFdmVyeXRoaW5nOiBXaGVuIGFwcHJvYWNoaW5nIGp1bXBzIGFuZCByYW1w
cywgcGF5IGNsb3NlIGF0dGVudGlvbiB0byB5b3VyIHNwZWVkIGFuZCBhbmdsZS4gQSB3ZWxsLXRp
bWVkIGp1bXAgY2FuIG1ha2UgYWxsIHRoZSBkaWZmZXJlbmNlLg0KRG9uJ3QgQmUgQWZyYWlkIHRv
IFNsb3cgRG93bjogU29tZXRpbWVzLCB0aGUgZmFzdGVzdCByb3V0ZSBpc24ndCB0aGUgc2FmZXN0
LiBEb24ndCBiZSBhZnJhaWQgdG8gZWFzZSBvZmYgdGhlIGdhcyBhbmQgbmF2aWdhdGUgdHJpY2t5
IHNlY3Rpb25zIHdpdGggY2F1dGlvbi4gQ29uc2lkZXIgbG9va2luZyB1cCBndWlkZXMgZm9yIHNw
ZWNpZmljIGxldmVscyBvZiBTbm93IFJpZGVyIDNEIGF0IHdlYnNpdGVzIGxpa2UgU25vdyBSaWRl
ciAzRCBpZiB5b3XigJlyZSByZWFsbHkgc3RydWdnbGluZy4NCkV4cGVyaW1lbnQgd2l0aCBTbGVk
cyBhbmQgU2tpbnM6IERpZmZlcmVudCBzbGVkcyBtYXkgb2ZmZXIgc2xpZ2h0IHZhcmlhdGlvbnMg
aW4gaGFuZGxpbmcuIFRyeSBvdXQgZGlmZmVyZW50IG9wdGlvbnMgdG8gZmluZCBvbmUgdGhhdCBz
dWl0cyB5b3VyIHBsYXlzdHlsZS4NCkNvbmNsdXNpb246IEEgRnVuIGFuZCBBY2Nlc3NpYmxlIFdp
bnRlciBFc2NhcGUNClNub3cgUmlkZXIgM0QgaXMgYSBzdXJwcmlzaW5nbHkgYWRkaWN0aXZlIGFu
ZCBhY2Nlc3NpYmxlIGdhbWUgdGhhdOKAmXMgcGVyZmVjdCBmb3IgYSBxdWljayBkb3NlIG9mIHdp
bnRlciBmdW4uIEl0J3Mgc2ltcGxlIGNvbnRyb2xzIGFuZCBjaGFsbGVuZ2luZyBnYW1lcGxheSBt
YWtlIGl0IGVhc3kgdG8gcGljayB1cCBhbmQgcGxheSwgd2hpbGUgaXRzIHByb2NlZHVyYWwgZ2Vu
ZXJhdGlvbiBlbnN1cmVzIHRoYXQgZWFjaCBydW4gaXMgYSB1bmlxdWUgZXhwZXJpZW5jZS4gU28s
IHdoZXRoZXIgeW91J3JlIGxvb2tpbmcgZm9yIGEgY2FzdWFsIHRpbWUta2lsbGVyIG9yIGEgY2hh
bGxlbmdpbmcgc2tpbGwtYmFzZWQgZ2FtZSwgU25vdyBSaWRlciAzRCBpcyBkZWZpbml0ZWx5IHdv
cnRoIGNoZWNraW5nIG91dC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
