Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QATjD73gxmnAPgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 20:55:41 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBE334A83E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 20:55:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15386402EF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 19:50:35 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D2443F7EE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 19:50:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: joelwest689@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Fri, 27 Mar 2026 19:50:27 -0000
Message-ID: <177464102724.336850.2661221878555976173@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: S5XJYH7PHKOCPC5LS7MALMDBX5RGIBPE
X-Message-ID-Hash: S5XJYH7PHKOCPC5LS7MALMDBX5RGIBPE
X-MailFrom: joelwest689@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Understanding Blockchain Forensics:
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S5XJYH7PHKOCPC5LS7MALMDBX5RGIBPE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.69 / 15.00];
	SPAM_FLAG(5.00)[];
	MID_RHS_MATCH_TO(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,body];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[joelwest689@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	NEURAL_SPAM(0.00)[0.681];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:mid]
X-Rspamd-Queue-Id: CCBE334A83E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

QnkgY29tYmluaW5nIGNyb3NzLWNoYWluIHRyYWNpbmcsIHJhcGlkIHJlc3BvbnNlLCBhbmQgZGF0
YS1kcml2ZW4gaW52ZXN0aWdhdGlvbiwgQ2lwaGVyIFJlc2N1ZSBDaGFpbiBzdGFuZHMgYXMgdGhl
IGdsb2JhbCBiZW5jaG1hcmsgZm9yIGNyeXB0byByZWNvdmVyeS4gRXZlcnkgdHJhY2VkIHRyYW5z
YWN0aW9uLCBldmVyeSByZWNvbnN0cnVjdGVkIHBhdGgsIGFuZCBldmVyeSByZWNvdmVyZWQgYXNz
ZXQgcmVpbmZvcmNlcyB0aGUgc2FtZSBjb25jbHVzaW9uOiB3aXRoIHRoZSByaWdodCBmb3JlbnNp
YyBleHBlcnRpc2UsIHJlY292ZXJ5IGlzIG5vdCBvbmx5IHBvc3NpYmxl4oCUaXQgaXMgaGlnaGx5
IGFjaGlldmFibGUuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
