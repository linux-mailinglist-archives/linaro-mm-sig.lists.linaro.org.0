Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 19AnMHJuK2rS9QMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 04:26:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 494E7676460
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 04:26:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=hidingmail.net (policy=reject);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3347140A52
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 02:26:57 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 16CE73F751
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 02:26:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: yappy.mink.rxln@hidingmail.net
To: linaro-mm-sig@lists.linaro.org
Date: Fri, 12 Jun 2026 02:26:50 -0000
Message-ID: <178123121009.402764.15337231639069283394@lists.linaro.org>
User-Agent: HyperKitty on http://lists-ec2.linaro.org/
Message-ID-Hash: LQC5JQCPHTJMSYPWEMHQEHEYGIK4WSZJ
X-Message-ID-Hash: LQC5JQCPHTJMSYPWEMHQEHEYGIK4WSZJ
X-MailFrom: yappy.mink.rxln@hidingmail.net
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Unlocking the Joy of Spatial Puzzles: A Deep Dive into Block Blast
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LQC5JQCPHTJMSYPWEMHQEHEYGIK4WSZJ/>
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
	FORGED_SENDER(0.00)[yappy.mink.rxln@hidingmail.net,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[yappy.mink.rxln@hidingmail.net,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NO_DN(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	R_SPF_ALLOW(0.00)[+mx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hidingmail.net:from_mime,linaro.org:email,lists.linaro.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 494E7676460
X-Spam: Yes

RmVlbGluZyB0aGUgaXRjaCBmb3IgYSBzYXRpc2Z5aW5nIHB1enpsZSBjaGFsbGVuZ2U/IExvb2sg
bm8gZnVydGhlciB0aGFuIGdhbWVzIGxpa2XCoEJsb2NrIEJsYXN0LiBUaGVzZSBlbmdhZ2luZyB0
aWxlLW1hdGNoaW5nIGV4cGVyaWVuY2VzIG9mZmVyIGEgZGVsaWdodGZ1bCBibGVuZCBvZiBzdHJh
dGVneSBhbmQgc3BhdGlhbCByZWFzb25pbmcsIHBlcmZlY3QgZm9yIGEgcXVpY2sgbWVudGFsIHdv
cmtvdXQgb3IgYSBsb25nZXIsIHJlbGF4aW5nIHNlc3Npb24uIExldCdzIGV4cGxvcmUgaG93IHRv
IGdldCB0aGUgbW9zdCBvdXQgb2YgdGhlc2UgY2FwdGl2YXRpbmcgZ2FtZXMuDQoNCmh0dHBzOi8v
YmxvY2tibGFzdHMuaW8vDQoNCkludHJvZHVjdGlvbjogV2hhdCBpcyBCbG9jayBCbGFzdGluZz8N
Cg0KQXQgaXRzIGNvcmUsIGEgYmxvY2stYmxhc3RpbmcgZ2FtZSBpcyBhYm91dCBjbGVhcmluZyBh
IGdyaWQgYnkgc3RyYXRlZ2ljYWxseSBwbGFjaW5nIHZhcmlvdXMtc2hhcGVkIGJsb2Nrcy4gSW1h
Z2luZSBhIGJsZW5kIG9mIFRldHJpcyBhbmQgYSBqaWdzYXcgcHV6emxlLCB3aGVyZSB5b3VyIGdv
YWwgaXNuJ3QganVzdCB0byBjb21wbGV0ZSBsaW5lcywgYnV0IHRvIGVsaW1pbmF0ZSBlbnRpcmUg
Y2x1c3RlcnMgb2YgYmxvY2tzLiBUaGUgYmVhdXR5IGxpZXMgaW4gaXRzIHNpbXBsaWNpdHk6IG5v
IGNvbXBsZXggbmFycmF0aXZlcyBvciBpbnRyaWNhdGUgY29udHJvbHMsIGp1c3QgcHVyZSwgdW5h
ZHVsdGVyYXRlZCBwdXp6bGUtc29sdmluZyBmdW4uIE1hbnkgdmVyc2lvbnMgb2YgdGhpcyBnYW1l
IGV4aXN0LCBidXQgZm9yIHRoaXMgYXJ0aWNsZSwgd2XigJlsbCBiZSBmb2N1c2luZyBvbiBhIGdl
bmVyYWwgYXBwcm9hY2ggdGhhdCBhcHBsaWVzIHRvIG1vc3QgdmFyaWF0aW9ucywgaW5jbHVkaW5n
wqBCbG9jayBCbGFzdMKgaXRzZWxmLg0KDQpHYW1lcGxheTogVGhlIEZ1bmRhbWVudGFscyBvZiBD
dWJlIENsZWFyaW5nDQoNClRoZSBiYXNpYyBwcmVtaXNlIGlzIHN0cmFpZ2h0Zm9yd2FyZC4gWW91
J3JlIHByZXNlbnRlZCB3aXRoIGEgZ3JpZCwgdHlwaWNhbGx5IDh4OCBvciAxMHgxMCwgYW5kIGEg
cXVldWUgb2YgdGhyZWUgcmFuZG9tbHkgZ2VuZXJhdGVkIGJsb2NrcyBhdCB0aGUgYm90dG9tIG9m
IHlvdXIgc2NyZWVuLiBZb3VyIHRhc2sgaXMgdG8gZHJhZyBhbmQgZHJvcCB0aGVzZSBibG9ja3Mg
b250byB0aGUgZ3JpZC4gVGhlIG1hZ2ljIGhhcHBlbnMgd2hlbiB5b3UgZm9ybSBhIGNvbXBsZXRl
IGhvcml6b250YWwgb3IgdmVydGljYWwgbGluZSAob3Igc29tZXRpbWVzIGJvdGgpIHdpdGggeW91
ciBwbGFjZWQgYmxvY2tzLiBPbmNlIGEgbGluZSBpcyBjb21wbGV0ZSwgaXQgZGlzYXBwZWFycywg
ZnJlZWluZyB1cCBzcGFjZSBhbmQgZWFybmluZyB5b3UgcG9pbnRzLg0KDQpUaGUgY2hhbGxlbmdl
IGludGVuc2lmaWVzIGFzIHRoZSBncmlkIGZpbGxzIHVwLiBJZiB5b3UgcnVuIG91dCBvZiBzcGFj
ZSB0byBwbGFjZSBhbnkgb2YgdGhlIHRocmVlIGF2YWlsYWJsZSBibG9ja3MsIHRoZSBnYW1lIGVu
ZHMuIFRoaXMgY3JlYXRlcyBhIGNvbnN0YW50IHRlbnNpb24gYW5kIGVuY291cmFnZXMgY2FyZWZ1
bCBwbGFubmluZy4gU29tZSBnYW1lcyBhbHNvIGZlYXR1cmUgc3BlY2lhbCBibG9ja3Mg4oCTIHBl
cmhhcHMgYSBib21iIHRoYXQgY2xlYXJzIGEgc21hbGwgYXJlYSwgb3IgYSByb3RhdGluZyBibG9j
ayB0aGF0IG9mZmVycyBtb3JlIHBsYWNlbWVudCBvcHRpb25zLiBUaGVzZSBhZGRpdGlvbnMgYWRk
IGFub3RoZXIgbGF5ZXIgb2Ygc3RyYXRlZ2ljIGRlcHRoLCBrZWVwaW5nIHRoZSBnYW1lcGxheSBm
cmVzaCBhbmQgZXhjaXRpbmcuDQoNClRpcHMgZm9yIEJlY29taW5nIGEgQmxvY2sgQmxhc3QgQ2hh
bXBpb24NCg0KV2hpbGUgQmxvY2sgQmxhc3QgaXMgZWFzeSB0byBwaWNrIHVwLCBtYXN0ZXJpbmcg
aXQgcmVxdWlyZXMgYSBiaXQgb2Ygc3RyYXRlZ3kuIEhlcmUgYXJlIGEgZmV3IHRpcHMgdG8gaGVs
cCB5b3UgbWF4aW1pemUgeW91ciBzY29yZXMgYW5kIHBsYXl0aW1lOg0KDQpMb29rIEFoZWFkOsKg
QWx3YXlzIGNvbnNpZGVyIHRoZSBuZXh0IGZldyBibG9ja3MgaW4geW91ciBxdWV1ZS4gRG9uJ3Qg
anVzdCBwbGFjZSBhIGJsb2NrIHRvIGNsZWFyIG9uZSBsaW5lIGlmIGl0IGNvbXByb21pc2VzIHlv
dXIgYWJpbGl0eSB0byBwbGFjZSBzdWJzZXF1ZW50LCBsYXJnZXIgYmxvY2tzLg0KS2VlcCB0aGUg
Q2VudGVyIENsZWFyOsKgSXQncyB0ZW1wdGluZyB0byBmaWxsIHVwIHRoZSBlZGdlcyBmaXJzdCwg
YnV0IGFuIG9wZW4gY2VudGVyIGdpdmVzIHlvdSBmYXIgbW9yZSBmbGV4aWJpbGl0eSBmb3IgbGFy
Z2VyLCBpcnJlZ3VsYXJseSBzaGFwZWQgYmxvY2tzLg0KUHJpb3JpdGl6ZSBMYXJnZSBCbG9ja3M6
wqBXaGlsZSBjbGVhcmluZyBzaW5nbGUgbGluZXMgaXMgZ29vZCwgdHJ5IHRvIHNldCB1cCBvcHBv
cnR1bml0aWVzIHRvIGNsZWFyIG11bHRpcGxlIGxpbmVzIHNpbXVsdGFuZW91c2x5LCBvciB0byB1
c2UgeW91ciBsYXJnZXIgYmxvY2tzIGVmZmVjdGl2ZWx5Lg0KRG9uJ3QgQmUgQWZyYWlkIHRvIFNh
Y3JpZmljZTrCoFNvbWV0aW1lcywgeW91IG1pZ2h0IG5lZWQgdG8gcGxhY2UgYSBibG9jayBpbiBh
IGxlc3MtdGhhbi1pZGVhbCBzcG90IHRvIGF2b2lkIGFuIGltbWVkaWF0ZSBnYW1lIG92ZXIuIEl0
J3MgYWJvdXQgZGFtYWdlIGNvbnRyb2wuDQpJZGVudGlmeSBQYXR0ZXJuczrCoEFzIHlvdSBwbGF5
IG1vcmUsIHlvdSdsbCBzdGFydCB0byByZWNvZ25pemUgY29tbW9uIGJsb2NrIGNvbWJpbmF0aW9u
cyBhbmQgaG93IHRoZXkgZml0IHRvZ2V0aGVyIGJlc3QuIFByYWN0aWNlIHRydWx5IG1ha2VzIHBl
cmZlY3QgaGVyZS4NClV0aWxpemUgU3BlY2lhbCBCbG9ja3MgV2lzZWx5OsKgSWYgeW91ciBnYW1l
IGhhcyB0aGVtLCBkb24ndCBqdXN0IHVzZSBzcGVjaWFsIGJsb2NrcyBpbXB1bHNpdmVseS4gU2F2
ZSBib21icyBmb3IgdHJ1bHkgc3RpY2t5IHNpdHVhdGlvbnMsIG9yIHVzZSByb3RhdG9ycyB0byBt
YXhpbWl6ZSBzcGFjZS4NCg0KQ29uY2x1c2lvbjogQSBSZWZyZXNoaW5nIFB1enpsZSBFeHBlcmll
bmNlDQoNCkdhbWVzIGxpa2UgQmxvY2sgQmxhc3Qgb2ZmZXIgYSBnZW51aW5lbHkgZW5qb3lhYmxl
IGFuZCBtZW50YWxseSBzdGltdWxhdGluZyBleHBlcmllbmNlLiBUaGV5J3JlIGVhc3kgdG8gcGlj
ayB1cCwgeWV0IHByb3ZpZGUgZW5kbGVzcyBvcHBvcnR1bml0aWVzIGZvciBzdHJhdGVnaWMgcmVm
aW5lbWVudC4gV2hldGhlciB5b3UncmUgbG9va2luZyB0byB1bndpbmQgYWZ0ZXIgYSBsb25nIGRh
eSBvciBzaGFycGVuIHlvdXIgcHJvYmxlbS1zb2x2aW5nIHNraWxscywgdGhlc2UgYmxvY2stY2xl
YXJpbmcgcHV6emxlcyBhcmUgYSBmYW50YXN0aWMgY2hvaWNlLiBTbywgd2hhdCBhcmUgeW91IHdh
aXRpbmcgZm9yPyBEaXZlIGluIGFuZCBzdGFydCBibGFzdGluZyB0aG9zZSBibG9ja3MhDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
