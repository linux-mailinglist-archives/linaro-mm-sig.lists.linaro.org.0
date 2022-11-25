Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A0201638838
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 12:05:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8C403EF19
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:05:43 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id B3D3A3ED3C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 11:05:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=R9blsbwb;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669374334;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Kvo3ByqVNYtl4Gj5V4V1EtKWGChjY02VeHw9i+vXN5I=;
	b=R9blsbwbJ1QzGDChFtjT5iFse/7SI6fbWBkM+bZNXgAc4PgkUpZ7E1eXpbHeV7PshiyUku
	3tTZlkK8H2vuDV7v4jq0vIXNJrwHoJjkffTvQs2QsvEZTZbfOJkC559PAwYn0dLf5VI1/J
	9HLEYYP7TOBgEv+lT25NIyXtkMFQDsE=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-653-y6rNWUyyPeaIyKkBQr-mCA-1; Fri, 25 Nov 2022 06:05:33 -0500
X-MC-Unique: y6rNWUyyPeaIyKkBQr-mCA-1
Received: by mail-wm1-f70.google.com with SMTP id b47-20020a05600c4aaf00b003d031aeb1b6so3993530wmp.9
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 03:05:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kvo3ByqVNYtl4Gj5V4V1EtKWGChjY02VeHw9i+vXN5I=;
        b=5CTW+gkIjCT0kkLNEZvmbLap2wd8nHU/VlicGnjH60T0mXIRrbZTv6gR12sefSaA0E
         HA0Y0wwvbvNkZRm85/fSC1fOzQ1ztfepU0WUxPyzE9UC5jmH8QrkizekyHhB4Xly2EGc
         BxuRu8USwI0UAQxSEoNXQneRkXnCIY/4IddY62L/eNLo6NVAZSznEidCEkYUJSY23onv
         rZ+BiStjBd/uzCA6NSCrA+LpoSX0sDsQKy/qlHRnOnoGN51zH3VEBCmIQhHrBBqOzXVl
         yGOyDqfwimoP1tcFkodj8NG5ii25cteWDgv4XHsB+x5xvGbD8BgmRmLrHwCY2NAfyd+w
         7C1Q==
X-Gm-Message-State: ANoB5pmVKgdjBFCkOZg3s1Wcve/6gg1OaRZ9HWfAZPB3Ub1wlrmPOnxZ
	Rev6w8u25n6KvzpkUZatRo0jfta3/KQ+fnl2wTL5ZwU7AsGmBET1XYR5GA9TGTVjtrS4rNA/Chv
	eMGQG1Oj6QYmwQ9MLtXizK8uepBo=
X-Received: by 2002:adf:ce05:0:b0:241:ea29:fa06 with SMTP id p5-20020adfce05000000b00241ea29fa06mr8120171wrn.594.1669374332184;
        Fri, 25 Nov 2022 03:05:32 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6wTdp2+VuVoE5mvN2PyA3RkmkpVRnCk9tCcFb4MGlJIpqCV6lnFcIqScH72xr3oR/swXwGWw==
X-Received: by 2002:adf:ce05:0:b0:241:ea29:fa06 with SMTP id p5-20020adfce05000000b00241ea29fa06mr8120136wrn.594.1669374331867;
        Fri, 25 Nov 2022 03:05:31 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id f13-20020a05600c4e8d00b003c6c182bef9sm11765978wmq.36.2022.11.25.03.05.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 03:05:30 -0800 (PST)
Message-ID: <0c5c0fa9-7223-2855-04e8-5ce264b873e6@redhat.com>
Date: Fri, 25 Nov 2022 12:05:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-13-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-13-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: B3D3A3ED3C
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[92.176.231.205:received,209.85.128.70:received];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email,us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
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
Message-ID-Hash: SIGN3FGAMCZAQ5IUPO2D3HAI5HLPXQ52
X-Message-ID-Hash: SIGN3FGAMCZAQ5IUPO2D3HAI5HLPXQ52
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 13/24] drm/vc4: kms: Constify the HVS old/new state helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SIGN3FGAMCZAQ5IUPO2D3HAI5HLPXQ52/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> The vc4_hvs_get_(old|new)_global_state functions don't modify the
> drm_atomic_state passed as an argument, so let's make it const.
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
