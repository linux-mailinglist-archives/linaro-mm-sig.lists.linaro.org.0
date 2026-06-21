Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Z3cpIEDWN2pCUgcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 14:17:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D406D6AAAF9
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 14:17:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0702840AF8
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 12:17:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ACA6E409A5
	for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Jun 2026 12:16:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: douglasesmith206@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Sun, 21 Jun 2026 12:16:56 -0000
Message-ID: <178204421670.3079621.7937485738119112728@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: K2QDTKZ2KTT352NFUTSBO2Z6IMS7T3HE
X-Message-ID-Hash: K2QDTKZ2KTT352NFUTSBO2Z6IMS7T3HE
X-MailFrom: douglasesmith206@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?b?QnV5IGEgQ2FuYWRpYW4gcGVybWFuZW50IHJlc2lkZW50IGNhcmQgKFdoYXRzQXBw77yaKzQ5IDE1MjEgNTA2NjQ2Mikg6LO86LK35Yqg5ou/5aSn5rC45LmF5bGF5rCR5Y2hICjlvq7kv6FJRO+8mldlc2J1dG1hbik=?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K2QDTKZ2KTT352NFUTSBO2Z6IMS7T3HE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[douglasesmith206@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[douglasesmith206@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	R_DKIM_NA(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[firstdocumentsonline.com:url,lists.linaro.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D406D6AAAF9

QnV5IGEgQ2FuYWRpYW4gcGVybWFuZW50IHJlc2lkZW50IGNhcmQgKFdoYXRzQXBw77yaKzQ5IDE1
MjEgNTA2NjQ2Mikg6LO86LK35Yqg5ou/5aSn5rC45LmF5bGF5rCR5Y2hICjlvq7kv6FJRO+8mldl
c2J1dG1hbikNCkJ1eSBSZWFsIEF1c3RyYWxpYW4gUGFzc3BvcnQgaHR0cHM6Ly9maXJzdGRvY3Vt
ZW50c29ubGluZS5jb20vYnV5LWEtcmVhbC1hdXN0cmFsaWFuLXBhc3Nwb3J0Lw0KQnV5IFJlYWwg
Q2FuYWRpYW4gUGFzc3BvcnQgaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20vYnV5LWEt
cmVhbC1jYW5hZGlhbi1wYXNzcG9ydC8NCkJ1eSBSZWFsIEZyZW5jaCBQYXNzcG9ydCBodHRwczov
L2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS9idXktYS1yZWFsLWZyZW5jaC1wYXNzcG9ydC8NCkJ1
eSBSZWFsIE5vcndlZ2lhbiBQYXNzcG9ydCBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNv
bS9idXktYS1yZWFsLW5vcndlZ2lhbi1wYXNzcG9ydC8NCkJ1eSBSZWFsIEJyYXppbGlhbiBQYXNz
cG9ydCBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS9idXktcmVhbC1icmF6aWxpYW4t
cGFzc3BvcnQvDQpCdXkgUmVhbCBDaGluZXNlIFBhc3Nwb3J0IGh0dHBzOi8vZmlyc3Rkb2N1bWVu
dHNvbmxpbmUuY29tL2J1eS1yZWFsLWNoaW5lc2UtcGFzc3BvcnQvDQpCdXkgUmVhbCBDemVjaCBQ
YXNzcG9ydCBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS9idXktcmVhbC1jemVjaC1w
YXNzcG9ydC8NCkJ1eSBSZWFsIEVzdG9uaWFuIFBhc3Nwb3J0IGh0dHBzOi8vZmlyc3Rkb2N1bWVu
dHNvbmxpbmUuY29tL2J1eS1yZWFsLWVzdG9uaWFuLXBhc3Nwb3J0Lw0KQnV5IFJlYWwgSmFwYW5l
c2UgUGFzc3BvcnQgaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20vYnV5LXJlYWwtamFw
YW5lc2UtcGFzc3BvcnQvDQpCdXkgUmVhbCBQb2xpc2ggUGFzc3BvcnQgaHR0cHM6Ly9maXJzdGRv
Y3VtZW50c29ubGluZS5jb20vYnV5LXJlYWwtcG9saXNoLXBhc3Nwb3J0Lw0KQnV5IFJlYWwgVUsg
UGFzc3BvcnQgaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20vYnV5LXJlYWwtdWstcGFz
c3BvcnQvDQpCdXkgUmVhbCBVU0EgUGFzc3BvcnQgaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGlu
ZS5jb20vYnV5LXJlYWwtdXNhLXBhc3Nwb3J0Lw0KQnV5IEVVIFJlc2lkZW5jZSBQZXJtaXQgaHR0
cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20vYnV5LWFuLWV1LXJlc2lkZW5jZS1wZXJtaXQt
b25saW5lLw0KQnV5IElyaXNoIERyaXZlcuKAmXMgTGljZW5zZSBodHRwczovL2ZpcnN0ZG9jdW1l
bnRzb25saW5lLmNvbS9idXktaXJpc2gtZHJpdmVycy1saWNlbnNlLW9ubGluZS8NCkJ1eSBVSyBE
cml2ZXLigJlzIExpY2Vuc2UgT25saW5lIGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUuY29t
L2J1eS11ay1kcml2ZXJzLWxpY2Vuc2Utb25saW5lLw0KQnV5IFN3aXNzIGRyaXZlcuKAmXMgbGlj
ZW5zZSBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS9idXktc3dpc3MtZHJpdmVycy1s
aWNlbnNlLW9ubGluZS8NCkJ1eSBTd2VkaXNoIERyaXZlcuKAmXMgTGljZW5zZSBodHRwczovL2Zp
cnN0ZG9jdW1lbnRzb25saW5lLmNvbS9idXktc3dlZGlzaC1kcml2ZXJzLWxpY2Vuc2Utb25saW5l
Lw0KQnV5IFBvbGlzaCBEcml2ZXLigJlzIExpY2Vuc2UgaHR0cHM6Ly9maXJzdGRvY3VtZW50c29u
bGluZS5jb20vYnV5LXBvbGlzaC1kcml2ZXJzLWxpY2Vuc2Utb25saW5lLw0KQnV5IEdlcm1hbiBE
cml2ZXLigJlzIExpY2Vuc2UgaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20vYnV5LWEt
Z2VybWFuLWRyaXZlcnMtbGljZW5zZS1vbmxpbmUvDQpCdXkgRVUgRHJpdmVy4oCZcyBMaWNlbnNl
IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUuY29tL2J1eS1ldS1kcml2ZXJzLWxpY2Vuc2Ut
b25saW5lLw0KQnV5IEF1c3RyaWFuIERyaXZlcuKAmXMgTGljZW5zZSBodHRwczovL2ZpcnN0ZG9j
dW1lbnRzb25saW5lLmNvbS9idXktYXVzdHJpYW4tZHJpdmVycy1saWNlbnNlLW9ubGluZS8NCkJ1
eSBJdGFsaWFuIERyaXZlcuKAmXMgTGljZW5zZSBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5l
LmNvbS9idXktaXRhbGlhbi1kcml2ZXJzLWxpY2Vuc2Utb25saW5lLw0KQnV5IFJlYWwgSUQgQ2Fy
ZHMgaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20vYnV5LWlkLWNhcmRzLW9ubGluZS8N
CkJ1eSBDYW5hZGEgUGVybWFuZW50IFJlc2lkZW50IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxp
bmUuY29tL2J1eS1jYW5hZGEtcGVybWFuZW50LXJlc2lkZW50Lw0KQnV5IENhbmFkYSBQZXJtYW5l
bnQgUmVzaWRlbnQgaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20vYnV5LWNhbmFkYS1w
ZXJtYW5lbnQtcmVzaWRlbnQvDQpCdXkgQ2FuYWRhIFBlcm1hbmVudCBSZXNpZGVudCBodHRwczov
L2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS9idXktY2FuYWRhLXBlcm1hbmVudC1yZXNpZGVudC8N
CkJ1eSBDYW5hZGEgUGVybWFuZW50IFJlc2lkZW50IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxp
bmUuY29tL2J1eS1jYW5hZGEtcGVybWFuZW50LXJlc2lkZW50Lw0KQnV5IENhbmFkYSBQZXJtYW5l
bnQgUmVzaWRlbnQgaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20vYnV5LWNhbmFkYS1w
ZXJtYW5lbnQtcmVzaWRlbnQvDQpCdXkgQ2FuYWRhIFBlcm1hbmVudCBSZXNpZGVudCBodHRwczov
L2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS9idXktY2FuYWRhLXBlcm1hbmVudC1yZXNpZGVudC8N
CkJ1eSBDYW5hZGEgUGVybWFuZW50IFJlc2lkZW50IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxp
bmUuY29tL2J1eS1jYW5hZGEtcGVybWFuZW50LXJlc2lkZW50Lw0K6LSt5Lmw5Yqg5ou/5aSn5rC4
5LmF5bGF5rCRIGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUuY29tL2J1eS1jYW5hZGEtcGVy
bWFuZW50LXJlc2lkZW50Lw0K6LSt5Lmw5Yqg5ou/5aSn5rC45LmF5bGF5rCRIGh0dHBzOi8vZmly
c3Rkb2N1bWVudHNvbmxpbmUuY29tL2J1eS1jYW5hZGEtcGVybWFuZW50LXJlc2lkZW50Lw0KQnV5
IFRyYXZlbCBWaXNhcyBPbmxpbmUgaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20vY2F0
ZWdvcnkvYnV5LXJlYWwtcGVybWl0cy1vbmxpbmUvYnV5LXJlYWwtdHJhdmVsLXZpc2FzLW9ubGlu
ZS8NCkJ1eSBVLlMuIERyaXZlcuKAmXMgTGljZW5zZTogaHR0cHM6Ly9maXJzdGRvY3VtZW50c29u
bGluZS5jb20vYnV5LXUtcy1kcml2ZXJzLWxpY2Vuc2UtMi8NCkJ1eSBVbmRldGVjdGFibGUgQ291
bnRlcmZlaXQgTW9uZXk6IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUuY29tL2NvdW50ZXJm
ZWl0LW1vbmV5Lw0KDQooVGVsZWdyYW3vvJp3ZXNidXRtYW4wKQ0KDQooV2hhdHNBcHDvvJorNDkg
MTUyMSA1MDY2NDYyKQ0KDQoo5b6u5L+hSUTvvJpXZXNidXRtYW4pDQoNCijkv6HnrrHvvJp3ZXNi
dXRtYW4wQGdtYWlsLmNvbSkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
