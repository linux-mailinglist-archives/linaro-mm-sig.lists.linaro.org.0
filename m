Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gRytEE1mIWoqFwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Jun 2026 13:49:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AC063F907
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Jun 2026 13:49:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=none
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD51B409C1
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2026 11:49:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C7E54098A
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2026 11:49:25 +0000 (UTC)
MIME-Version: 1.0
From: tzn20361@laoia.com
To: linaro-mm-sig@lists.linaro.org
Date: Thu, 04 Jun 2026 11:49:25 -0000
Message-ID: <178057376557.2611284.13101574598499140096@lists.linaro.org>
In-Reply-To: <c6kwqxz2xgl64qb6dzetjjh6j2a6hj7mvbkeg57f5ulfs2hrib@ocjjsoxw3ns6>
References: <c6kwqxz2xgl64qb6dzetjjh6j2a6hj7mvbkeg57f5ulfs2hrib@ocjjsoxw3ns6>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: GJL3KF5223KVTHCZODWATZZXJUV3EAH3
X-Message-ID-Hash: GJL3KF5223KVTHCZODWATZZXJUV3EAH3
X-MailFrom: tzn20361@laoia.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm: docs: Remove item from TODO list
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GJL3KF5223KVTHCZODWATZZXJUV3EAH3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.49 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[laoia.com];
	FORGED_SENDER(0.00)[tzn20361@laoia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ARC_NA(0.00)[];
	DM_SURBL(0.00)[laoia.com:from_mime];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[tzn20361@laoia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	R_DKIM_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,slopegame2.com:url,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,lists.linaro.org:mid,laoia.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B0AC063F907

You might want to check the OpenCSD repository again for the cs-trace-disasm.py script. If it's still missing, consider looking at the Issues section or reaching out to the maintainers for help. https://slopegame2.com
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
