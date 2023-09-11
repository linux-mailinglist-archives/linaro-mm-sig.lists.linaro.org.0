Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC0279A968
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 17:06:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C87543F59E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 15:06:56 +0000 (UTC)
Received: from mail.brosna.pl (mail.brosna.pl [89.46.79.6])
	by lists.linaro.org (Postfix) with ESMTPS id 880623F1D7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Sep 2023 10:20:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=brosna.pl header.s=mail header.b=L5np5qKQ;
	spf=pass (lists.linaro.org: domain of dawid.jarocki@brosna.pl designates 89.46.79.6 as permitted sender) smtp.mailfrom=dawid.jarocki@brosna.pl;
	dmarc=pass (policy=reject) header.from=brosna.pl
Received: by mail.brosna.pl (Postfix, from userid 1001)
	id D22F3829F3; Mon, 11 Sep 2023 11:20:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=brosna.pl; s=mail;
	t=1694427634; bh=ky4gAr8IRNLb4sWU+O4EGLOhLqJ/sPUcW7S+sdjZOvQ=;
	h=Date:From:To:Subject:From;
	b=L5np5qKQss3ljdaDGBciBgp59qs9SwTi9tMbxjrnOOlmHzGSX00Y06ncGGGk9r6rk
	 dqZjz91auUWAtkIvpkKAjy7OnmXZeXtuQ7yDq776QhkgGEkKZ35HezZrZvIAERG6/4
	 PnGn5cNG8w79Ib5quBtgWDoT6k2W7iSf5F4YplYnt/3DHva9ze61AZEI03r0N8fsdP
	 AFa3lGyHaW6L5wm3HLumyQ+K8452B2tfrt+DktBqAPTsR3bZZsRBPLpzs2XUXFcxjL
	 to/0nlpfmEXsQ/kdAuWxQ/rd3+/LiFQl74t/TErN+QSX0p026rckseyzBTY70HDJax
	 NTGHNjck66bJQ==
Received: by mail.brosna.pl for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Sep 2023 10:20:13 GMT
Message-ID: <20230911102408-0.1.8g.mvtt.0.pe8uvlsb4b@brosna.pl>
Date: Mon, 11 Sep 2023 10:20:13 GMT
From: "Dawid Jarocki" <dawid.jarocki@brosna.pl>
To: <linaro-mm-sig@lists.linaro.org>
X-Mailer: mail.brosna.pl
MIME-Version: 1.0
X-Rspamd-Queue-Id: 880623F1D7
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.03 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[brosna.pl,reject];
	R_DKIM_ALLOW(-0.20)[brosna.pl:s=mail];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	BAYES_HAM(-0.04)[58.32%];
	XM_UA_NO_VERSION(0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:31034, ipnet:89.46.72.0/21, country:IT];
	NEURAL_HAM(-0.00)[-0.975];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.brosna.pl:helo,mail.brosna.pl:rdns];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[brosna.pl:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: dawid.jarocki@brosna.pl
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LI5RDBA2J5ZRR2YKAPTKKTCTXWMUZG3N
X-Message-ID-Hash: LI5RDBA2J5ZRR2YKAPTKKTCTXWMUZG3N
X-Mailman-Approved-At: Mon, 11 Sep 2023 15:03:24 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Redukcja mocy na wezwanie
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LI5RDBA2J5ZRR2YKAPTKKTCTXWMUZG3N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RHppZcWEIGRvYnJ5LA0KDQpjenkgamVzdCBtb8W8bGl3b8WbxIcsIGJ5IG5hIHBld2llbiBjemFz
IFBhxYRzdHdhIHpha8WCYWQgcHJvZHVrY3lqbnkgbcOzZ8WCIHpyZXp5Z25vd2HEhyB6IGN6xJnF
m2NpIGx1YiBjYcWCb8WbY2kgenXFvHl3YW5laiBlbmVyZ2lpPyANCg0KVyB6YW1pYW4gemEgZ290
b3dvxZvEhyBkbyByZWR1a2NqaSBpIGplaiB3eWtvbmFuaWUgbW9nxIUgb3RyenltYcSHIFBhxYRz
dHdvIHN0YcWCZSB3eW5hZ3JvZHplbmllLCBrdMOzcmUgdyBwcnplbGljemVuaXUgbmEgMSBNVyBy
ZWR1a2NqaSBtb2N5IHd5bm9zaSBvZCA1MDAgZG8gNzIwIHR5cy4gesWCIHcgemFsZcW8bm/Fm2Np
IG9kIGN6YXN1IHpkb2xub8WbY2kgZG8gcmVkdWtjamkuDQoNClVjemVzdG5pY3R3byB3IHByb2dy
YW1pZSBEU1IgKERlbWFuZCBTaWRlIFJlc3BvbnNlKSB0byBkbGEgUGHFhHN0d2EgYnJhayBrb3N6
dMOzdyBpbXBsZW1lbnRhY2ppIGkgd3pyb3N0IGJlenBpZWN6ZcWEc3R3YSBlbmVyZ2V0eWN6bmVn
by4NCg0KSmXFm2xpIGludGVyZXN1amUgUGHFhHN0d2EgZ2VuZXJvd2FuaWUgd2llbG9sZXRuaWNo
IHByenljaG9kw7N3IHogcHJvZ3JhbXUgRFNSLCBwcm9zesSZIG8gd2lhZG9tb8WbxIcuDQoNCg0K
UG96ZHJhd2lhbQ0KRGF3aWQgSmFyb2NraQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
