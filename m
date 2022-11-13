Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B403E6270A1
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 13 Nov 2022 17:35:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 87E0A3F601
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 13 Nov 2022 16:35:44 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id E00C73F5F2
	for <linaro-mm-sig@lists.linaro.org>; Sun, 13 Nov 2022 16:35:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=Ebnk7x7W;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from [192.168.2.125] (109-252-117-140.nat.spd-mgts.ru [109.252.117.140])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E774366022FA;
	Sun, 13 Nov 2022 16:35:23 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1668357324;
	bh=j9qUvJJp/X2OPgESZeNiGJ13HdOpsuZE/t5C9EOgn60=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Ebnk7x7WD+IAH7GwiTF4ZSDyeIVD58Reg5mAKWo/fnoy+gMY7V+jclZpRY1qDficD
	 pSgjHK097TZP7s7QChi/ksj65ak0gf1TuSTBBnzLMYQr2qpXePth7QsDpV68dimgfC
	 4IBS8MotxvmUB9rqqKi+/OOwxxpPuaaaWgNTY5xTKMkQ5MuFHeREpQINB1SmUSvV+H
	 oYx8bQLzayLrj235JY+Bm9J2H77WkDCCZA4J860YY5yOFW5ctQqQhOgPskljYAeW3r
	 oIpTX3FjkGka81pG0yKbEvboulAw5ITN6aKfC4zjrI4Ov8ZkOg4NraWwm1MccN5Ir2
	 9s6lpcq03HDew==
Message-ID: <50cece73-a499-eba3-7018-9e92e0791c88@collabora.com>
Date: Sun, 13 Nov 2022 19:35:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>,
 Gerd Hoffmann <kraxel@redhat.com>
References: <20221113150511.8878-1-lukasz.wiecaszek@gmail.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20221113150511.8878-1-lukasz.wiecaszek@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ----
X-Rspamd-Queue-Id: E00C73F5F2
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[46.235.227.172:from,109.252.117.140:received];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_TO(0.00)[googlemail.com,redhat.com];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: 4MNJOLRCP6UZBXXU3Z3IRF73SMMWWPPM
X-Message-ID-Hash: 4MNJOLRCP6UZBXXU3Z3IRF73SMMWWPPM
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>, kernel test robot <lkp@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] udmabuf: add vmap method to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4MNJOLRCP6UZBXXU3Z3IRF73SMMWWPPM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/13/22 18:05, Lukasz Wiecaszek wrote:
> +static int vmap_udmabuf(struct dma_buf *buf, struct iosys_map *map)
> +{
> +	struct udmabuf *ubuf = buf->priv;
> +
> +	if (!ubuf->vaddr) {
> +		ubuf->vaddr = vm_map_ram(ubuf->pages, ubuf->pagecount, -1);
> +		if (!ubuf->vaddr)
> +			return -EINVAL;
> +	}

Create a new mapping on each vmap_udmabuf() and add the corresponding
vunmap.

Otherwise persistent vmapping shall be released together with udmabuf.
It doesn't look that persistent vmapping is needed for udmabufs.

-- 
Best regards,
Dmitry

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
