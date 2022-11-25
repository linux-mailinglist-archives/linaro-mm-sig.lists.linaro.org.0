Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B9E6388EF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 12:41:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E9943EF3D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:41:37 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 154ED3ED3C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 11:41:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=GOb93dQp;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669376487;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FOhIdeO2viHCtBqTf2iYEwnXDI6Ezk/3Vbjgspkc6Ig=;
	b=GOb93dQpB3NGGtlpMC9T++AHscY9WT7jkJJPpj7wEmi0rMeCuQMS009Uf27x3/SqUf45/X
	tgVrfv1x0jg+JiLTChq1Kq9n8vgtua/kEz1EBIxXwjePCiQPPeYdkzvOpMpIgGpAjfBTXu
	d5ma7SkuJgi5YH5DiQldO9xY1K7p3Zw=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-169-dbylFcwdPhuVLOK0WAehMw-1; Fri, 25 Nov 2022 06:41:26 -0500
X-MC-Unique: dbylFcwdPhuVLOK0WAehMw-1
Received: by mail-wr1-f69.google.com with SMTP id c4-20020adfa304000000b00241e5b2c816so803202wrb.21
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 03:41:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FOhIdeO2viHCtBqTf2iYEwnXDI6Ezk/3Vbjgspkc6Ig=;
        b=oVhA3avSZn5mcKt4GfUGUfgeiTPZzaJle9l2gUmU9uxvqEviz1DxIJBGxqxsy9YB7t
         jsYE968ofFn3vvl8yxGPURW8Z6IBl+m0dX24blDlWG4TjOXXtngHBd8p1en5uMuY6+bp
         eyhlgYduot1popgDxA1J79U6EGBAyAvi10V/9vTGzc4AuNooQ5lpxtXEvMWd4MOej9s/
         PzU1Bw+UVDnkXvQA91QywqYKWIKYoLuEMBX4/v9qinlTC7E/uX03fknmTMhqJZkNwaAV
         iojog8fKGh8TMd5dtLhtvk4tQgHM61h6hG7A/rTpFlSc2FOuO4usj8AavoZdr3ytl9Oz
         zpaA==
X-Gm-Message-State: ANoB5pkD1DeL8+kDapnXmew30HH4Er59dHqiVLUYfCkB+3RlRWCntnWC
	O+ixClsJLZrd6iz8L59xi1QOy5//Ta7HgiE7Ev5nKC4wZu5ohENWAhBa3NyLfWj1WHTtIVfKroI
	Z7qfPlGMCDqYQGZ00dNYrtGnX7kc=
X-Received: by 2002:adf:e34d:0:b0:241:ee4a:2301 with SMTP id n13-20020adfe34d000000b00241ee4a2301mr7222674wrj.429.1669376485538;
        Fri, 25 Nov 2022 03:41:25 -0800 (PST)
X-Google-Smtp-Source: AA0mqf7XK7j/pUPAtmTo6t54sJnnyf1J8fqURJI79qjd/c5yPhwa217razm52j8W7b414NZu8YvG6w==
X-Received: by 2002:adf:e34d:0:b0:241:ee4a:2301 with SMTP id n13-20020adfe34d000000b00241ee4a2301mr7222654wrj.429.1669376485339;
        Fri, 25 Nov 2022 03:41:25 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id he6-20020a05600c540600b003cf4ec90938sm4846070wmb.21.2022.11.25.03.41.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 03:41:24 -0800 (PST)
Message-ID: <a39d6b1f-a496-d293-8f27-c17d30d6c0b5@redhat.com>
Date: Fri, 25 Nov 2022 12:41:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-21-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-21-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 154ED3ED3C
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.221.69:received,92.176.231.205:received];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[170.10.129.124:from];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_THREE(0.00)[4];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DL4PQ2G5XT7MH5KWWVWVDOVF63BVRAWQ
X-Message-ID-Hash: DL4PQ2G5XT7MH5KWWVWVDOVF63BVRAWQ
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 21/24] drm/vc4: hvs: Provide a function to initialize the HVS structure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DL4PQ2G5XT7MH5KWWVWVDOVF63BVRAWQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:26, Maxime Ripard wrote:
> We'll need to initialize the HVS structure without a backing device to
> create a mock we'll use for testing.
> 
> Split the structure initialization part into a separate function.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
