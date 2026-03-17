Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNfOHmiFuWkPJAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Mar 2026 17:46:32 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD7C2AE615
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Mar 2026 17:46:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA9CA3F7B6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Mar 2026 16:46:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D1CD13F790
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 16:46:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: kachachaissue12@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Tue, 17 Mar 2026 16:46:19 -0000
Message-ID: <177376597985.4188388.18245205277621547858@lists.linaro.org>
User-Agent: HyperKitty on http://lists-ec2.96boards.org/
Message-ID-Hash: CYYW55VWCRKAKEIMY5HGYNRN264CSMVR
X-Message-ID-Hash: CYYW55VWCRKAKEIMY5HGYNRN264CSMVR
X-MailFrom: kachachaissue12@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?b?QWJvcnRpb24gUGlsbHMgRm9yIFNhbGUgSW4gUkFLIENpdHksICjwn5+h8J+SlvCfn6IpKzk3MTU2ODA0NDY5OSjwn5+h8J+SlvCfn6JBYm9ydGlvbiBQaWxscyBGb3IgU2FsZSBJbiBGdWphaXJhaCwgSmViZWwgQWxpLCBLYWxiYSwgQWJvcnRpb24gUGlsbHMgRm9yIFNhbGUgSW4gS2hvciBGYWtrYW4sIFVtbSBhbC1RdXdhaW4=?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CYYW55VWCRKAKEIMY5HGYNRN264CSMVR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kachachaissue12@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_SPAM(0.00)[0.226];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:mid,linaro.org:email]
X-Rspamd-Queue-Id: 0DD7C2AE615
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

QWJvcnRpb24gUGlsbHMgRm9yIFNhbGUgSW4gUkFLIENpdHksICjwn5+h8J+SlvCfn6IpKzk3MTU2
ODA0NDY5OSjwn5+h8J+SlvCfn6JBYm9ydGlvbiBQaWxscyBGb3IgU2FsZSBJbiBGdWphaXJhaCwg
SmViZWwgQWxpLCBLYWxiYSwgQWJvcnRpb24gUGlsbHMgRm9yIFNhbGUgSW4gS2hvciBGYWtrYW4s
IFVtbSBhbC1RdXdhaW4rOTcxNTY4MDQ0Njk5IEFib3J0aW9uIFBpbGxzIEluIEJhaHJhaW4sICs5
NzE1NjgwNDQ2OTkgQWJvcnRpb24gUGlsbHMgRm9yIFNhbGUgSW4gQmFocmFpbiwgKzk3MTU2ODA0
NDY5OSBUZXJtaW5hdGlvbiBQaWxscyBBdmFpbGFibGUgSW4gQmFocmFpbiwgKzk3MTU2ODA0NDY5
OSBXaGVyZSBDYW4gSSBCdXkgQ3l0b3RlYyBQaWxscyBJbiBCYWhyYWluLCArOTcxNTY4MDQ0Njk5
IE1pc29wcm9zdG9sIFBpbGxzIEF2YWlsYWJsZSBJbiBCYWhyYWluLCArOTcxNTY4MDQ0Njk5IE1p
c29wcm9zdG9sIFRhYmxldHMgQXZhaWxhYmxlIEluIEJhaHJhaW4sICs5NzE1NjgwNDQ2OTkgKzk3
MTU2ODA0NDY5OSBNaXNvcHJvc3RvbCBNZWRpY2luZSBJbiBCYWhyYWluLCArOTcxNTY4MDQ0Njk5
IE1pZmVwcmlzdG9uZSBQaWxscyBJbiBCYWhyYWluLCArOTcxNTY4MDQ0Njk5IE1pZmVwcmlzdG9u
ZSBQaWxscyBJbiBCYWhyYWluLCArOTcxNTY4MDQ0Njk5IE1pZmVwcmlzdG9uZSBUYWJsZXRzIElu
IEJhaHJhaW4sICs5NzE1NjgwNDQ2OTkgTWlmZXByaXN0b25lIE1lZGljaW5lIEF2YWlsYWJsZSBJ
biBCYWhyYWluLCArOTcxNTY4MDQ0Njk5IFdoZXJlIENhbiBJIEZpbmQgTWlmZXByaXN0b25lIFBp
bGxzIEluIEJhaHJhaW4sICs5NzE1NjgwNDQ2OTkgQnV5IEFib3J0aW9uIFBpbGxzIEluIEJhaHJh
aW4sQ3l0b3RlYyBQaWxscyBBdmFpbGFibGUgSW4gQWJ1IERoYWJpLCBCdXkgTWlmZXByaXN0b25l
IEFuZCBNaXNvcHJvc3RvbCBJbiBBYnUgRGhhYmksIEJ1eSBjeXRvdGVjIFBpbGxzIEluIEFidSBE
aGFiaSwgQnV5IEFib3J0aW9uIHBpbGxzIGluIEFidSBEaGFiaSwgQWJvcnRpb24gUGlsbHMgRm9y
IFNhbGUgSW4gUWF0YXIgUGhhcm1hY3kgQWJvcnRpb24gUGlsbHMgRm9yIFNhbGUgSW4gRG9oYSBX
aGVyZSB0byBCdXkgY3l0b3RlYyBpbiBEb2hhIFFhdGFyLGJ1eSBtaWZlcHJpc3RvbmUgYW5kIG1p
c29wcm9zdG9sIGluIERvaGEsIGJ1eSBjeXRvdGVjIHBpbGxzIGluIERvaGEsQWJvcnRpb24gUGls
bHMgRm9yIFNhbGUgSW4gS3V3YWl0LCBidXkgbWlmZXByaXN0b25lIGFuZCBtaXNvcHJvc3RvbCBp
biBLdXdhaXQsIGJ1eSBjeXRvdGVjIHBpbGxzIGluIEt1d2FpdCwgYnV5IGFib3J0aW9uIHBpbGxz
IGluIEt1d2FpdCwgYWJvcnRpb24gcGlsbCBpbiBLdXdhaXQsIEFib3J0aW9uIFBpbGxzIEZvciBT
YWxlIEluIFJhcyBBbCBLaGFpbWFoLCBidXkgbWlmZXByaXN0b25lIGFuZCBtaXNvcHJvc3RvbCBp
biBSYXMgQWwgS2hhaW1haCwgYnV5IGN5dG90ZWMgcGlsbHMgaW4gUmFzIEFsIEtoYWltYWgsIGJ1
eSBhYm9ydGlvbiBwaWxscyBpbiBSYXMgQWwgS2hhaW1haCDigKYgQWJvcnRpb24gUGlsbHMgRm9y
IFNhbGUgSW4gU2hhcmphaCwgYnV5IG1pZmVwcmlzdG9uZSBhbmQgbWlzb3Byb3N0b2wgaW4gU2hh
cmphaCwgYnV5IGN5dG90ZWMgcGlsbHMgaW4gU2hhcmphaCwgYnV5IGFib3J0aW9uIHBpbGxzIGlu
IFNoYXJqYWgsIGFib3J0aW9uIHBpbGwgaW4gU2hhcmphaCwgQWJvcnRpb24gUGlsbHMgRm9yIFNh
bGUgSW4gRHViYWkgTWFsbCwgYnV5IG1pZmVwcmlzdG9uZSBhbmQgbWlzb3Byb3N0b2wgaW4gRHVi
YWkgTWFsbCwgYnV5IGN5dG90ZWMgcGlsbHMgaW4gRHViYWkgTWFsbCwgYnV5IGFib3J0aW9uIHBp
bGxzIGluIER1YmFpIE1hbGwsIGFib3J0aW9uIHBpbGwgaW4gRHViYWkg4oCmIEFib3J0aW9uIFBp
bGxzIEZvciBTYWxlIEluIEFsIFNhdHdhLCBidXkgbWlmZXByaXN0b25lIGFuZCBtaXNvcHJvc3Rv
bCBpbiBTYXR3YSwgYnV5IGN5dG90ZWMgcGlsbHMgaW4gU2F0d2EsIGJ1eSBhYm9ydGlvbiBwaWxs
cyBpbiBTYXR3YSwgYWJvcnRpb24gcGlsbCBpbiBTYXR3YSwgQWJvcnRpb24gUGlsbHMgRm9yIFNh
bGUgSW4gQWptYW4sIGJ1eSBtaWZlcHJpc3RvbmUgYW5kIG1pc29wcm9zdG9sIGluIEFqbWFuLCBi
dXkgY3l0b3RlYyBwaWxscyBpbiBBam1hbiwgYnV5IGFib3J0aW9uIHBpbGxzIGluIEFqbWFuLCBh
Ym9ydGlvbiBwaWxsIGluIEFqbWFuLCBBYm9ydGlvbiBQaWxscyBGb3IgU2FsZSBJbiBEZWlyYSwg
YnV5IG1pZmVwcmlzdG9uZSBhbmQgbWlzb3Byb3N0b2wgaW4gRGVpcmEsIGJ1eSBjeXRvdGVjIHBp
bGxzIGluIERlaXJhLCBidXkgYWJvcnRpb24gcGlsbHMgaW4gRGVpcmEsIGFib3J0aW9uIHBpbGwg
aW4gRGVpcmEsIEFib3J0aW9uIFBpbGxzIEZvciBTYWxlIEluIFJhayBDaXR5LCBidXkgbWlmZXBy
aXN0b25lIGFuZCBtaXNvcHJvc3RvbCBpbiBSYWsgQ2l0eSwgYnV5IGN5dG90ZWMgcGlsbHMgaW4g
UmFrIENpdHksIGJ1eSBhYm9ydGlvbiBwaWxscyBpbiBSYWsgQ2l0eSwgYWJvcnRpb24gcGlsbCBp
biBSYWsgQ2l0eSwgQWJvcnRpb24gUGlsbHMgRm9yIFNhbGUgSW4gQWwgQWluLCBidXkgbWlmZXBy
aXN0b25lIGFuZCBtaXNvcHJvc3RvbCBpbiBBbCBBaW4sIGJ1eSBjeXRvdGVjIHBpbGxzIGluIEFs
IEFpbiwgYnV5IGFib3J0aW9uIHBpbGxzIGluIEFsIEFpbiwgYWJvcnRpb24gcGlsbCBpbiBBbCBB
aW4sQWJvcnRpb24gUGlsbHMgRm9yIFNhbGUgSW4gTXVzY2F0LCBidXkgbWlmZXByaXN0b25lIGFu
ZCBtaXNvcHJvc3RvbCBpbiBNdXNjYXQsIGJ1eSBjeXRvdGVjIHBpbGxzIGluIE11c2NhdCwgYnV5
IGFib3J0aW9uIHBpbGxzIGluIE11c2NhdCwgYWJvcnRpb24gcGlsbCBpbiBNdXNjYXQNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
