Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7255CAA7675
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 17:51:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B125841534
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 15:51:08 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
	by lists.linaro.org (Postfix) with ESMTPS id B3DFA41111
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 May 2025 15:50:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=casper.20170209 header.b=JsZFhV8j;
	dmarc=none;
	spf=none (lists.linaro.org: domain of willy@infradead.org has no SPF policy when checking 90.155.50.34) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=77t87rE0+Ie/XOv1QrJlACmGkOIthRco+3O3xhyV8iE=; b=JsZFhV8j/YfgQJyEiHmt/UjETm
	13jmvuyG8AFsMfsbqorL7m3wpda5+otymSvyk+p0Frq6+IOGPJcDaUDvXJBSzmyNi7694XRNBYPR9
	CtkZC1/TDTabiqNT55T/gWUYsB3wBv+Bmo4J2x86zgfHeMZSaxJO6XtS8Rd/3d+34+aK2Uv6wb3q1
	piSXZx5MX3E3KXZ/0ewXMLSUPoLtdcNZuClTItm0j4oDStiJ3q20JRKRfn3trVSGKtxfpJd/CGio7
	xJdJ9eghN1MVeI+PK1ep19Ka2tC16w5c7oKCy7B8zRCAsONjxe3AdadzOARCykn9eCKL5qvpt0p6y
	um0hb+7Q==;
Received: from willy by casper.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAsdk-000000051JO-39jB;
	Fri, 02 May 2025 15:49:28 +0000
Date: Fri, 2 May 2025 16:49:28 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Jens Wiklander <jens.wiklander@linaro.org>
Message-ID: <aBTpiMIevmAmp5vr@casper.infradead.org>
References: <20250502100049.1746335-1-jens.wiklander@linaro.org>
 <20250502100049.1746335-10-jens.wiklander@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250502100049.1746335-10-jens.wiklander@linaro.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B3DFA41111
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.26 / 15.00];
	REPLY(-4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	BAYES_HAM(-0.66)[82.72%];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=casper.20170209];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[infradead.org:dkim];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[infradead.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org,linux-foundation.org,kvack.org];
	DKIM_TRACE(0.00)[infradead.org:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:20712, ipnet:90.155.0.0/18, country:GB];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[90.155.50.34:from]
X-Rspamd-Action: no action
Message-ID-Hash: DQ4UPNJ7JMMH4NKT2KOEGCKVH7LU6XDT
X-Message-ID-Hash: DQ4UPNJ7JMMH4NKT2KOEGCKVH7LU6XDT
X-MailFrom: willy@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 09/14] cma: export cma_alloc() and cma_release()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DQ4UPNJ7JMMH4NKT2KOEGCKVH7LU6XDT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 02, 2025 at 11:59:23AM +0200, Jens Wiklander wrote:
> Export the two functions cma_alloc() and cma_release().

Why?  This is clearly part of a larger series, but you've given those of
us who are subscribed to linux-mm absolutely no information about why
you want to do this.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
