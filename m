Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pElvDJdVT2qbegIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 09 Jul 2026 10:02:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C12672E05D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 09 Jul 2026 10:02:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=atomicmail.io (policy=reject);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42A5740C68
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2026 08:02:20 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 578DA40AE4
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2026 08:01:44 +0000 (UTC)
MIME-Version: 1.0
From: highchairchide@atomicmail.io
To: linaro-mm-sig@lists.linaro.org
Date: Thu, 09 Jul 2026 08:01:44 -0000
Message-ID: <178358410435.707341.8646040209730115252@lists.linaro.org>
In-Reply-To: <83e5e74d-7106-4e14-9d10-56438372f6a3@samsung.com>
References: <83e5e74d-7106-4e14-9d10-56438372f6a3@samsung.com>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: TMYAAYCUB7M4VYQ5C4FA6FIUX3S7MWPD
X-Message-ID-Hash: TMYAAYCUB7M4VYQ5C4FA6FIUX3S7MWPD
X-MailFrom: highchairchide@atomicmail.io
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 06/11] mm/cma: Allow dynamically creating CMA areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TMYAAYCUB7M4VYQ5C4FA6FIUX3S7MWPD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[atomicmail.io : SPF not aligned (relaxed), No valid DKIM,reject];
	MID_RHS_MATCH_TO(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[highchairchide@atomicmail.io,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	ASN_FAIL(0.00)[118.186.210.44.asn.rspamd.com:query timed out];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[highchairchide@atomicmail.io,linaro-mm-sig-bounces@lists.linaro.org];
	RSPAMD_EMAILBL_FAIL(0.00)[linaro-mm-sig-leave.lists.linaro.org:query timed out];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,atomicmail.io:from_mime,basketballstars-2.io:url,lists.linaro.org:from_smtp,lists.linaro.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0C12672E05D

Basketball Stars, the massively popular multiplayer mobile and browser game, strips away the clutter of complex plays and reduces basketball to its purest,  https://basketballstars-2.io
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
