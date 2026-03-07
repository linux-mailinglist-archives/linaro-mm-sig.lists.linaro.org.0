Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cIxNJBaYrGlarAEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 07 Mar 2026 22:26:46 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3024C22DB22
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 07 Mar 2026 22:26:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D4C34015D
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Mar 2026 21:26:45 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A0EE13F7E4
	for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Mar 2026 21:26:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: "Yulie Morgan" <morganyulie64@gmail.com>
To: linaro-mm-sig@lists.linaro.org
Date: Sat, 07 Mar 2026 21:26:38 -0000
Message-ID: <177291879865.2715900.15545661402568235380@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: XG47KNVOTFLNFNTFOJHIWVMIK5TMLD54
X-Message-ID-Hash: XG47KNVOTFLNFNTFOJHIWVMIK5TMLD54
X-MailFrom: morganyulie64@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Cryptera Chain Signals Provides Overview Of Forensics Tools Used In Digital Asset Cases
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XG47KNVOTFLNFNTFOJHIWVMIK5TMLD54/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 3024C22DB22
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.69 / 15.00];
	SPAM_FLAG(5.00)[];
	MID_RHS_MATCH_TO(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[morganyulie64@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.936];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:mid,lists.linaro.org:rdns,lists.linaro.org:helo,crypterachainsignals.com:url,crypterachainsignals.com:email]
X-Rspamd-Action: no action

Q3J5cHRlcmEgQ2hhaW4gU2lnbmFscyBoYXMgb3V0bGluZWQgdGhlIHR5cGVzIG9mIHNwZWNpYWxp
emVkIHRvb2xzIGFuZCBtZXRob2RzIGVtcGxveWVkIGluIGRpZ2l0YWwgYXNzZXQgaW52ZXN0aWdh
dGlvbnMuIE9wZXJhdGluZyBmb3IgMjggeWVhcnMgd2l0aCBvdmVyIDQyNiBjb21wbGV0ZWQgcHJv
amVjdHMgYW5kIGEgNC4yOCBvdXQgb2YgNSByYXRpbmcgZnJvbSAyLDQ2NyBjbGllbnQgcmV2aWV3
cywgdGhlIGZpcm0gcmVsaWVzIG9uIGEgY29tYmluYXRpb24gb2YgcHVibGljIGJsb2NrY2hhaW4g
ZGF0YSBhbmQgcHJvcHJpZXRhcnkgbXVsdGktbGF5ZXIgYXR0cmlidXRpb24gdGVjaG5pcXVlcy4N
CkNvcmUgdG9vbHMgaW5jbHVkZSB0cmFuc2FjdGlvbiBncmFwaCB2aXN1YWxpemF0aW9uIHNvZnR3
YXJlIHRoYXQgcGxvdHMgZXZlcnkgdHJhbnNmZXIgYXMgaW50ZXJjb25uZWN0ZWQgbm9kZXMsIG1h
a2luZyBjb21wbGV4IGZsb3dzIHZpc2libGUgYXQgYSBnbGFuY2UuIEFkZHJlc3MgY2x1c3Rlcmlu
ZyBhbGdvcml0aG1zIHRoZW4gZ3JvdXAgc2VlbWluZ2x5IHVucmVsYXRlZCB3YWxsZXRzIHRoYXQg
c2hhcmUgYmVoYXZpb3JhbCB0cmFpdHMgc3VjaCBhcyBzaW1pbGFyIHRyYW5zYWN0aW9uIHNpemVz
IG9yIHRpbWluZy4gVGhlc2UgbGF5ZXJzIGFsbG93IENyeXB0ZXJhIENoYWluIFNpZ25hbHMgdG8g
dHJhY2UgYXNzZXRzIGV2ZW4gYWZ0ZXIgdGhleSBwYXNzIHRocm91Z2ggb2JmdXNjYXRpb24gc2Vy
dmljZXMuDQpDbGllbnRzIHJlY2VpdmUgZXhwbGFuYXRpb25zIG9mIHRoZXNlIHRvb2xzIGluIHBs
YWluIGxhbmd1YWdlLiBGb3IgaW5zdGFuY2UsIHRoZXkgbGVhcm4gaG93IHB1YmxpYyBsZWRnZXJz
IGZ1bmN0aW9uIGxpa2UgYW4gb3BlbiBkYXRhYmFzZSB3aGVyZSBldmVyeSBlbnRyeSBpcyBwZXJt
YW5lbnQsIHlldCBpbnRlcnByZXRpbmcgdGhhdCBkYXRhIHJlcXVpcmVzIGV4cGVyaWVuY2UgaW4g
cGF0dGVybiByZWNvZ25pdGlvbi4gVGhlIGZpcm0gYWxzbyBkaXNjdXNzZXMgbGltaXRhdGlvbnMg
4oCUIGNlcnRhaW4gcHJpdmFjeS1mb2N1c2VkIHByb3RvY29scyBvciByYXBpZCBjcm9zcy1jaGFp
biBtb3ZlbWVudHMgY2FuIHJlZHVjZSB2aXNpYmlsaXR5LCBhbmQgbm8gdG9vbCBjYW4gYWNjZXNz
IHByaXZhdGUga2V5cyBvciBvZmYtY2hhaW4gaW5mb3JtYXRpb24uDQpFZHVjYXRpb24gZXh0ZW5k
cyB0byBldmVyeWRheSBhcHBsaWNhdGlvbnMuIENyeXB0ZXJhIENoYWluIFNpZ25hbHMgc2hvd3Mg
Y2xpZW50cyBob3cgdG8gdXNlIGZyZWUgZXhwbG9yZXJzIGZvciBiYXNpYyBjaGVja3MsIHdoeSB2
ZXJpZnlpbmcgY29udHJhY3QgYWRkcmVzc2VzIG1hdHRlcnMsIGFuZCBob3cgdG8gc3BvdCBhbm9t
YWxpZXMgbGlrZSBzdWRkZW4gbGFyZ2Ugd2l0aGRyYXdhbHMuIFNlc3Npb25zIGNvdmVyIHdhbGxl
dCBiZXN0IHByYWN0aWNlcyBhbmQgcmVzcG9uc2UgcHJvdG9jb2xzIGZvciBzdXNwZWN0ZWQgaW5j
aWRlbnRzLg0KQWxsIHdvcmsgZm9sbG93cyBzdHJpY3QgcHJpdmFjeSBwcm90b2NvbHMsIGJlZ2lu
bmluZyB3aXRoIG1pbmltYWwgZGF0YSBjb2xsZWN0aW9uIGFuZCBwcm9ncmVzc2luZyBvbmx5IHdp
dGggY2xpZW50IGNvbnNlbnQuIFJlcG9ydHMgYXJlIGRlc2lnbmVkIHRvIGVkdWNhdGUgcmF0aGVy
IHRoYW4gb3ZlcndoZWxtLCBoZWxwaW5nIHVzZXJzIHVuZGVyc3RhbmQgYm90aCB0aGUgaW5jaWRl
bnQgYW5kIGJyb2FkZXIgYmxvY2tjaGFpbiBwcmluY2lwbGVzLg0KQ3J5cHRlcmEgQ2hhaW4gU2ln
bmFscw0KV2Vic2l0ZTogaHR0cHM6Ly93d3cuY3J5cHRlcmFjaGFpbnNpZ25hbHMuY29tDQpFbWFp
bDogaW5mb0BjcnlwdGVyYWNoYWluc2lnbmFscy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
